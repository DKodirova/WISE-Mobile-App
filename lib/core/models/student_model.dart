import 'package:cloud_firestore/cloud_firestore.dart';

class StudentModel {
  final String? id;
  final String firstName;
  final String lastName;
  final String age;
  final String level;

  const StudentModel({
    this.id,
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.level,
  });

  toJson() {
    return {
      "FirstName": firstName,
      "LastName": lastName,
      "Age": age,
      "Level": level,
    };
  }

  factory StudentModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return StudentModel(
      id: document.id,
      firstName: data["FirstName"],
      lastName: data["LastName"],
      age: data["Age"],
      level: data["Level"],
    );
  }
}
