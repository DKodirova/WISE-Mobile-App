import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:wise_app/presentation/widgets/calendarUtils.dart';

//https://pub.dev/packages/table_calendar

class CalendarStateT {
  // DateTime focusedDay = DateTime.now();
  // final DateTime firstDay = DateTime(
  //     DateTime.now().year, DateTime.now().month - 3, DateTime.now().day);
  // final DateTime lastDay = DateTime(
  //     DateTime.now().year, DateTime.now().month + 3, DateTime.now().day);
  // late DateTime? selectedDay;


  late final ValueNotifier<List<Event>> selectedEvents;
  CalendarFormat calendarFormat = CalendarFormat.month;
  RangeSelectionMode rangeSelectionMode = RangeSelectionMode
      .toggledOff; // Can be toggled on/off by longpressing a date
  DateTime focusedDay = DateTime.now();
  DateTime? selectedDay;
  DateTime? rangeStart;
  DateTime? rangeEnd;

  AttendanceStateT() {}
}
