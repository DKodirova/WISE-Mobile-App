import 'package:get/get.dart';
import 'package:wise_app/presentation/screensParent/attendance/attendance_logic.dart';
import 'package:wise_app/presentation/screensTeacher/attendance/attendance_logic.dart';

 
class AttendanceBindingT extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AttendanceLogicT());
  }
}
