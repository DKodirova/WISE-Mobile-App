import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wise_app/core/routes/app_routes.dart';
import 'package:wise_app/core/style/constants.dart';
import 'package:wise_app/presentation/screensParent/contacts/contacts_view.dart';
import 'package:wise_app/presentation/screensParent/modules/modules_view.dart';
import 'package:wise_app/presentation/screensTeacher/modules/modules_view.dart';

 

class ManageCoursePageT extends StatelessWidget {
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
        title: Text('LEVEL 1', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                  width: 300,
                  height: 200,
                  child: Image.asset('assets/images/bg_arabic.png')),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15.0, top: 15, bottom: 0),
              child: Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton.icon(
                    icon: Icon(Icons.book, size: 24.0, color: Colors.grey),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => ModulesPageT()),
                      );
                    },
                    label: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Curriculum',
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
                    icon: Icon(Icons.call, size: 24.0, color: Colors.grey),
                    onPressed: () {
                       Get.toNamed(contactsPageT);
                    },
                    label: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Contacts',
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
