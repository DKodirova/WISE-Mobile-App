import 'package:get/get.dart';
import 'package:wise_app/presentation/screensParent/calendar/calendar_logic.dart';
import 'package:wise_app/presentation/screensParent/contacts/contacts_logic.dart';

class ContactsBindingP extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContactsLogicP());
  }
}
