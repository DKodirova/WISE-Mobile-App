import 'package:get/get.dart';

import 'login_logic.dart';

class LoginBindingT extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginLogicT());
  }
}
