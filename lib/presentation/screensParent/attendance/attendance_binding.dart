import 'package:get/get.dart';
import 'package:wise_app/presentation/screensParent/attendance/attendance_logic.dart';

 
class AttendanceBindingP extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AttendanceLogicP());
  }
}
