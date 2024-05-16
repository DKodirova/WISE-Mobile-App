import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wise_app/core/routes/app_routes.dart';
import 'package:wise_app/core/style/constants.dart';
import 'package:wise_app/presentation/screensParent/attendance/attendance_logic.dart';
import 'package:wise_app/presentation/screensParent/attendance/attendance_view.dart';
import 'package:wise_app/presentation/screensParent/calendar/calendar_view.dart';
import 'package:wise_app/presentation/screensParent/courses/courses_view.dart';
import 'package:wise_app/presentation/screensParent/home/home_logic.dart';
import 'package:wise_app/presentation/screensParent/home/home_state.dart';
import 'package:wise_app/presentation/widgets/text.dart';

class HomePageP extends StatelessWidget {
  final logic = Get.find<HomeLogicP>();
  final state = Get.find<HomeLogicP>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backG,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back)),
        title: CustomText(
          'MENU',
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(18),
            elevation: 8.0,
            shape: RoundedRectangleBorder(
                // borderRadius: BorderRadius.circular(10.0),
                ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: AspectRatio(
                    aspectRatio: 16 / 10,
                    child: ClipRRect(
                      // borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/bg_iccl.png', // Replace with your image asset path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                height: 60,
                margin: EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.symmetric(
                      horizontal: BorderSide(
                    color: backG,
                    width: 0.5,
                  )),
                ),
                child: ListTile(
                  onTap: () => Get.toNamed(coursesPageP),
                  leading: Icon(
                    Icons.book,
                    color: Colors.grey,
                    size: 25,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 15,
                  ),
                  title: CustomText(
                    'Courses',
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Container(
                height: 60,
                margin: EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.symmetric(
                      horizontal: BorderSide(
                    color: backG,
                    width: 0.5,
                  )),
                ),
                child: ListTile(
                  onTap: () => Get.toNamed(attendancePageP),
                  leading: Icon(
                    Icons.check,
                    color: Colors.grey,
                    size: 25,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 15,
                  ),
                  title: CustomText(
                    'Attendance',
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Container(
                height: 60,
                margin: EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.symmetric(
                      horizontal: BorderSide(
                    color: backG,
                    width: 0.5,
                  )),
                ),
                child: ListTile(
                  onTap: () => Get.toNamed(announcementsPageP),
                  leading: Icon(
                    Icons.chat_rounded,
                    color: Colors.grey,
                    size: 25,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 15,
                  ),
                  title: CustomText(
                    'Announcements',
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Container(
                height: 60,
                margin: EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.symmetric(
                      horizontal: BorderSide(
                    color: backG,
                    width: 0.5,
                  )),
                ),
                child: ListTile(
                  onTap: () => Get.toNamed(calendarPageP),
                  leading: Icon(
                    Icons.calendar_month,
                    color: Colors.grey,
                    size: 25,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 15,
                  ),
                  title: CustomText(
                    'Calendar',
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Container(
                height: 60,
                margin: EdgeInsets.only(right: 15),
                // width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.symmetric(
                      horizontal: BorderSide(
                    color: backG,
                    width: 0.5,
                  )),
                ),
                child: ListTile(
                  onTap: () => Get.toNamed(galleryPageP),
                  leading: Icon(
                    Icons.image,
                    color: Colors.grey,
                    size: 25,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 15,
                  ),
                  title: CustomText(
                    'Gallery',
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Container(
                height: 60,
                margin: EdgeInsets.only(right: 15),
                // width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.symmetric(
                      horizontal: BorderSide(
                    color: backG,
                    width: 0.5,
                  )),
                ),
                child: ListTile(
                  onTap: logic.logOut,
                  leading: Icon(
                    Icons.exit_to_app_rounded,
                    color: Colors.red.shade300,
                    size: 20,
                  ),
                  // trailing: Icon(
                  //   Icons.arrow_forward_ios,
                  //   color: Colors.grey,
                  //   size: 15,
                  // ),
                  title: CustomText(
                    'Log Out',
                    fontSize: 13,
                    color: Colors.red.shade300,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
