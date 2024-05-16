import 'package:get/get.dart';
import 'package:wise_app/presentation/screensParent/calendar/calendar_logic.dart';
import 'package:wise_app/presentation/screensParent/home/home_logic.dart';
 import 'package:wise_app/presentation/screensParent/manageCourses/manage_courses_logic.dart';
import 'package:wise_app/presentation/screensParent/modules/modules_logic.dart';

class ModulesBindingP extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ModulesLogicP());
  }
}
