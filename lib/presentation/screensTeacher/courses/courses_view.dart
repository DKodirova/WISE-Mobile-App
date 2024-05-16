import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wise_app/core/routes/app_routes.dart';
import 'package:wise_app/core/style/constants.dart';
import 'package:wise_app/presentation/screensParent/manageCourses/manage_courses_view.dart';
import 'package:wise_app/presentation/screensTeacher/manageCourses/manage_courses_view.dart';
import 'package:wise_app/presentation/widgets/child_dropdown/child_drop_down.dart';

class CoursesPageT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backG,
      appBar: AppBar(
        leading: GestureDetector(
          child: IconButton(
              icon: Icon(Icons.arrow_back, size: 24, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        title: Text('COURSES', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
                width: 300,
                height: 200,
                child: Image.asset('assets/images/bg_arabic.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(color: Colors.black),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ManageCoursePageT()));
                },
                child: Text(
                  'Level 1',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
                width: 300,
                height: 200,
                child: Image.asset('assets/images/bg_mosque.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(color: Colors.black),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ManageCoursePageT()));
                },
                child: Text(
                  'Level 1',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
