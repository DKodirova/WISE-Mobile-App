import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wise_app/core/models/student_model.dart';
import 'package:wise_app/core/models/user_model.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  createUser(UserModel user) async {
    await _db
        .collection("Users")
        .add(user.toJson())
        .whenComplete(() => Get.snackbar("Success!", "Your acc was created",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.green.withOpacity(0.1),
            colorText: Colors.green))
        .catchError((error, StackTrace) {
      Get.snackbar("Error!", "Smth went wrong",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red.withOpacity(0.1),
          colorText: Colors.red);
      print(error.toString());
    });
  }

  Future<UserModel> getUsersChildren(String email) async {
    final snapshot =
        await _db.collection("Users").where("Email", isEqualTo: email).get();
    final userData = snapshot.docs.map((e) => UserModel.fromSnapshot(e)).single;
    print("HERE"+ userData.id.toString());

    return userData;
  }

  // Future<List<StudentModel>> getUsersChildren(String email) async {
  //   final snapshot =
  //       await _db.collection("Users").where("Email", isEqualTo: email).get();
  //   final users = snapshot.docs.map((e) { 
  //     final model = UserModel.fromSnapshot(e.data() as DocumentSnapshot<Map<String, dynamic>>);
  //     // Setting the id value of the product object.
  //     model.id = e.id;
  //     return model;
  //   }).toList();
  //   return products;

  //   // final snapshot =
  //   //     await _db.collection("Users").doc(id).collection("Students").get();
  //   // final students =
  //   //     snapshot.docs.map((doc) => StudentModel.fromSnapshot(doc)).toList();

  //   // return students;
  // }
}
