import 'package:get/get.dart';
import 'package:wise_app/presentation/screensParent/calendar/calendar_logic.dart';
import 'package:wise_app/presentation/screensParent/home/home_logic.dart';
 import 'package:wise_app/presentation/screensParent/manageCourses/manage_courses_logic.dart';
import 'package:wise_app/presentation/screensTeacher/manageCourses/manage_courses_logic.dart';

class ManageCoursesBindingT extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ManageCoursesLogicT());
  }
}
