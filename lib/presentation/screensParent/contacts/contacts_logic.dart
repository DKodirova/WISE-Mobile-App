import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:wise_app/presentation/screensParent/calendar/calendar_state.dart';
import 'package:wise_app/presentation/screensParent/contacts/contacts_state.dart';

class ContactsLogicP extends GetxController {
  final ContactsStateP state = ContactsStateP();
  final box = GetStorage();
}
