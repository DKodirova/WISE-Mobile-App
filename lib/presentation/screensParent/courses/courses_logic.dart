import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
// import 'package:wise_app/data/course_model.dart';
import 'package:wise_app/presentation/screensParent/calendar/calendar_state.dart';
import 'package:wise_app/presentation/screensParent/courses/courses_state.dart';
 
class CoursesLogicP extends GetxController {
  final CoursesStateP state = CoursesStateP();

  // @override
  // void onReady() {
  //   state.levelsList.bindStream(FirestoreDb.todoStream());
  // }

    // List<CourseModel> get todos => state.levelsList.value;
}
