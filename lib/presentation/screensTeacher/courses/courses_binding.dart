import 'package:get/get.dart';
import 'package:wise_app/presentation/screensParent/calendar/calendar_logic.dart';
import 'package:wise_app/presentation/screensParent/courses/courses_logic.dart';
import 'package:wise_app/presentation/screensParent/home/home_logic.dart';
 import 'package:wise_app/presentation/screensTeacher/courses/courses_logic.dart';

class CoursesBindingT extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CoursesLogicT());
  }
}
