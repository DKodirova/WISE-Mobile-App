import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:wise_app/core/repositories/auth_repository/auth_repository.dart';
import 'package:wise_app/core/routes/app_routes.dart';
import 'package:wise_app/core/style/constants.dart';
import 'login_state.dart';

class LoginLogicP extends GetxController {
  final LoginStateP state = LoginStateP();
  

  static LoginLogicP instance = Get.find(); 

  

  bool isPasswordValid(String password) => password.length >= 6;

  bool isEmailValid(String email) {
    const String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    final RegExp regex = RegExp(pattern);
    if (email.isEmpty || !regex.hasMatch(email)) {
      return false;
    } else {
      return true;
    }
  }

  bool validate() {
    return isPasswordValid(state.password!.text) &&
        isEmailValid(state.email!.text);
  }

  Future<void> login(String email, password) async {
    // try {
    //   await auth.signInWithEmailAndPassword(email: email, password: password);
    //   state.accExists.value = true;
    // Get.offAllNamed(pickChildPageP);

    // } catch (firebaseAuthException) {}
    // print(state.accExists.value);
// print('EXCEPTION LOGIN - ${firebaseUser.value}');
    AuthenticationRepository.instance
        .loginWithEmailAndPassword(email, password);
  }

  void registerUser(String email, password) {
    AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password);
  }
}
