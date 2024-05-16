import 'package:get/get.dart';

import 'login_logic.dart';

class LoginBindingP extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginLogicP());
  }
}
