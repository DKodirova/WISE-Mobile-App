import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:wise_app/core/routes/app_routes.dart';
import 'package:wise_app/core/style/constants.dart';
import 'login_state.dart';

class LoginLogicT extends GetxController {
  final LoginStateT state = LoginStateT();

  @override
  void onReady() {
    super.onReady();
    // state.email!.addListener(_validateFields);
    // state.password!.addListener(_validateFields);
  }

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
    try {
      // await auth.signInWithEmailAndPassword(email: email, password: password);
      // state.accExists.value = true;
      // Get.offAllNamed(homePageT);
    } catch (firebaseAuthException) {}
    // print(state.accExists.value);
  }
}
