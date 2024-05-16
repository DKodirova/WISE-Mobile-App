import 'package:get/get.dart';
import 'package:wise_app/presentation/screensParent/calendar/calendar_logic.dart';
import 'package:wise_app/presentation/screensParent/home/home_logic.dart';
import 'package:wise_app/presentation/widgets/child_dropdown/child_drop_down_logic.dart';

class HomeBindingP extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeLogicP());
     Get.lazyPut(() => ChildDropdownL());
  }
}
