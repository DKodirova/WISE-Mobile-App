import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wise_app/core/routes/app_routes.dart';
import 'package:wise_app/core/style/constants.dart';
import 'package:wise_app/presentation/screensParent/attendance/attendance_logic.dart';
import 'package:wise_app/presentation/screensTeacher/attendance/attendance_logic.dart';
import 'package:wise_app/presentation/widgets/child_dropdown/child_drop_down.dart';
import 'package:wise_app/presentation/widgets/datePicker.dart';
import 'package:wise_app/presentation/widgets/text.dart';

// date.value = DateTime.now().date;
// time.value = DateTime.now().toLocal().time;
// dateTime.value = DateTime.now();

class AttendancePageT extends StatelessWidget {
  final logic = Get.find<AttendanceLogicT>();
  final state = Get.find<AttendanceLogicT>().state;

  List<String> childList = [
    'Joe Smith',
    'Sara Smith', 
  ];

  @override
  Widget build(BuildContext context) {
    void _showDialog(Widget child) {
      showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => Container(
          height: 216,
          padding: const EdgeInsets.only(top: 6.0),
          // The Bottom margin is provided to align the popup above the system
          // navigation bar.
          margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          // Provide a background color for the popup.
          color: CupertinoColors.systemBackground.resolveFrom(context),
          // Use a SafeArea widget to avoid system overlaps.
          child: SafeArea(
            top: false,
            child: child,
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, 
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back)),
        title: CustomText(
          'ATTENDANCE',
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
      backgroundColor: backG,
      body: Container(
        margin: const EdgeInsets.all(25),
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Obx(() {
                return DatePickerItem(
                  children: <Widget>[
                    CupertinoButton(
                      onPressed: () => _showDialog(
                        CupertinoDatePicker(
                          initialDateTime: state.date.value,
                          mode: CupertinoDatePickerMode.date,
                          minimumYear: DateTime.now().year - 1,
                          maximumYear: DateTime.now().year + 1,
                          use24hFormat: true,
                          showDayOfWeek: true,
                          onDateTimeChanged: (DateTime newDate) {
                            state.date.value = newDate;
                          },
                        ),
                      ),
                      child: Text(
                        '${state.date.value.month}/${state.date.value.day}/${state.date.value.year}',
                        style: const TextStyle(
                            fontSize: 20.0, color: Colors.black),
                      ),
                    ),
                    IconButton(
                      onPressed: () => _showDialog(
                        CupertinoDatePicker(
                          initialDateTime: state.date.value,
                          mode: CupertinoDatePickerMode.date,
                          minimumYear: DateTime.now().year - 1,
                          maximumYear: DateTime.now().year + 1,
                          use24hFormat: true,
                          showDayOfWeek: true,
                          onDateTimeChanged: (DateTime newDate) {
                            state.date.value = newDate;
                          },
                        ),
                      ),
                      icon: Icon(Icons.calendar_month),
                      color: Colors.grey,
                      iconSize: 24,
                    )
                  ],
                );
              }),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: childList.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.symmetric(
                          horizontal: BorderSide(
                        color: backG,
                        width: 1.0,
                      )),
                    ),
                    child: ListTile(
                      visualDensity: VisualDensity(horizontal: 0, vertical: 4),
                      leading: Container(
                        height: 100.0,
                        width: 100.0,
                        child: Image.asset('assets/other/sample_child.jpeg',
                            fit: BoxFit.fitHeight),
                      ),
                      tileColor: Colors.white,
                      title: Container( 
                          height: 100,
                          width: 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                childList[index],
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                              CustomText(
                                "Present",
                                fontSize: 10,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          )),
                      trailing: Icon(
                        Icons.check_circle_outline_rounded,
                        size: 25,
                        color: Colors.green,
                      ),
                      onTap: () {},
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
