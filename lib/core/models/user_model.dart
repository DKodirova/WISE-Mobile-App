import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wise_app/core/models/student_model.dart';

class UserModel {
  late final String? id;
  final String firstName;
  final String lastName;
  final String password;
  final String phoneNumber;
  final String email;
  final List<StudentModel> students;

  UserModel({
    this.id,
    required this.firstName,
    required this.lastName,
    required this.password,
    required this.phoneNumber,
    required this.email,
    required this.students,
  });

  toJson() {
    return {
      "FirstName": firstName,
      "LastName": lastName,
      "Password": password,
      "PhoneNumber": phoneNumber,
      "Email": email,
      "Students": students,
    };
  }

  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return UserModel(
      id: document.id,
      firstName: data["FirstName"],
      lastName: data["LastName"],
      password: data["Password"],
      phoneNumber: data["PhoneNumber"],
      email: data["Email"],
      students: data["Students"],
    );
  }
}
