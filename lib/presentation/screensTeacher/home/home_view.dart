import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wise_app/core/routes/app_routes.dart';
import 'package:wise_app/core/style/constants.dart';
 import 'package:wise_app/presentation/screensParent/attendance/attendance_logic.dart';
import 'package:wise_app/presentation/screensParent/attendance/attendance_view.dart';
import 'package:wise_app/presentation/screensParent/calendar/calendar_view.dart';
import 'package:wise_app/presentation/screensParent/courses/courses_view.dart';

class HomePageT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backG,
      appBar: AppBar(
        title: Text('MAIN MENU', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                  child: Container(
                      width: 300,
                      height: 250,
                      child: Image.asset('assets/images/bg_iccl.png')),
                )),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15.0, top: 2, bottom: 0),
              child: Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton.icon(
                    icon: Icon(Icons.book, size: 24.0, color: Colors.grey),
                    onPressed: () {
                      Get.toNamed(coursesPageT);
                    },
                    label: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Courses',
                            style:
                                TextStyle(color: Colors.black, fontSize: 16)),
                        Icon(Icons.arrow_forward_ios, color: Colors.grey)
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15.0, top: 2, bottom: 0),
              child: Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton.icon(
                    icon: Icon(Icons.check, size: 24.0, color: Colors.grey),
                    onPressed: () {
                      Get.toNamed(attendancePageT);
                    },
                    label: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Attendance',
                            style:
                                TextStyle(color: Colors.black, fontSize: 16)),
                        Icon(Icons.arrow_forward_ios, color: Colors.grey)
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15.0, top: 2, bottom: 0),
              child: Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton.icon(
                    icon: Icon(Icons.messenger_outlined,
                        size: 24.0, color: Colors.grey),
                    onPressed: () {
                      Get.toNamed(chatPageT);
                    },
                    label: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Announcements',
                            style:
                                TextStyle(color: Colors.black, fontSize: 16)),
                        Icon(Icons.arrow_forward_ios, color: Colors.grey)
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15.0, top: 2, bottom: 0),
              child: Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton.icon(
                    icon: Icon(Icons.calendar_month,
                        size: 24.0, color: Colors.grey),
                    onPressed: () {
                      Get.toNamed(calendarPageT);
                    },
                    label: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Calendar',
                            style:
                                TextStyle(color: Colors.black, fontSize: 16)),
                        Icon(Icons.arrow_forward_ios, color: Colors.grey)
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15.0, top: 2, bottom: 0),
              child: Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton.icon(
                    icon: Icon(Icons.insert_photo,
                        size: 24.0, color: Colors.grey),
                    onPressed: () {
                      Get.toNamed(galleryPageT);
                    },
                    label: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Gallery',
                            style:
                                TextStyle(color: Colors.black, fontSize: 16)),
                        Icon(Icons.arrow_forward_ios, color: Colors.grey)
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
