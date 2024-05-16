import 'package:get/get.dart';
import 'package:wise_app/presentation/screensParent/calendar/calendar_logic.dart';
import 'package:wise_app/presentation/screensParent/home/home_logic.dart';
import 'package:wise_app/presentation/screensTeacher/home/home_logic.dart';

class HomeBindingT extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeLogicT());
  }
}
