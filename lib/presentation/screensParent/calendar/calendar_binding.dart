import 'package:get/get.dart';
import 'package:wise_app/presentation/screensParent/calendar/calendar_logic.dart';

 

class CalendarBindingP extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CalendarLogicP());
  }
}
