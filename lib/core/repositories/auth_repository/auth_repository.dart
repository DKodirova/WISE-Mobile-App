import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:wise_app/core/repositories/auth_repository/exception/login_email_pass_failure.dart';
import 'package:wise_app/core/repositories/auth_repository/exception/signup_email_pass_failure.dart';
import 'package:wise_app/core/routes/app_routes.dart';
import 'package:wise_app/core/style/constants.dart';
import 'package:wise_app/presentation/screens/main/main_view.dart';
import 'package:wise_app/presentation/screensParent/auth/login/login_view.dart';
import 'package:wise_app/presentation/screensParent/home/home_view.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  //variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  _setInitScreen(User? user) {
    user == null ? Get.offAllNamed(mainPage) : Get.offAllNamed(pickChildPageP);

    if (user == null) {
      print('User is currently signed out!');
    } else {
      print('User is signed in!');
      print(user.uid);
    }
  }

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitScreen);
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
          ? Get.offAllNamed(pickChildPageP)
          : Get.offAllNamed(mainPage);
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION - ${ex.message}');
      throw ex;
    } catch (_) {
      const ex = SignUpWithEmailAndPasswordFailure();
      print('EXCEPTION - ${ex.message}');
      throw ex;
    }
  }

  Future<void> loginWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null
          ? Get.offAllNamed(pickChildPageP)
          : Get.offAllNamed(mainPage);
    } on FirebaseAuthException catch (e) {
      final ex = LoginWithEmailAndPasswordFailure.fromCode(e.code);
      print('FIREBASE AUTH EXCEPTION - ${ex.message}');
      throw ex;
    } catch (_) {
      const ex = LoginWithEmailAndPasswordFailure();
      print('EXCEPTION - ${ex.message}');
      throw ex;
    }
  }

  Future<void> logout() async => await _auth.signOut();
}
