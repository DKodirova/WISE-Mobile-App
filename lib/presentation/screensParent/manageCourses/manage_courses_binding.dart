import 'package:get/get.dart';
import 'package:wise_app/presentation/screensParent/calendar/calendar_logic.dart';
import 'package:wise_app/presentation/screensParent/home/home_logic.dart';
 import 'package:wise_app/presentation/screensParent/manageCourses/manage_courses_logic.dart';

class ManageCoursesBindingP extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ManageCoursesLogicP());
  }
}
