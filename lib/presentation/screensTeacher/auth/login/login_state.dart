import 'package:flutter/material.dart';
import 'package:get/get.dart'; 

class LoginStateT { 
  late TextEditingController? email;
  late TextEditingController? password; 
  late final RxBool loginEnabled;

  LoginStateT() { 
    email = TextEditingController();
    password = TextEditingController(); 
    loginEnabled = RxBool(false);
  }
}
