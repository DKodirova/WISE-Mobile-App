import 'package:flutter/material.dart';
import 'package:get/get.dart'; 

class LoginStateP { 
  late TextEditingController? email;
  late TextEditingController? password; 
  late final RxBool loginEnabled;
  late  RxBool accExists;

  LoginStateP() { 
    email = TextEditingController();
    password = TextEditingController(); 
    loginEnabled = RxBool(false);
    accExists = false.obs;
  }
}
