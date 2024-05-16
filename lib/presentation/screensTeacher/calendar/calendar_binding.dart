import 'package:get/get.dart';
import 'package:wise_app/presentation/screensParent/calendar/calendar_logic.dart';
import 'package:wise_app/presentation/screensTeacher/calendar/calendar_logic.dart';

 

class CalendarBindingT extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CalendarLogicT());
  }
}
