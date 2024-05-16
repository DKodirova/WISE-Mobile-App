import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:wise_app/presentation/screensParent/calendar/calendar_state.dart';
import 'package:wise_app/presentation/screensParent/contacts/contacts_state.dart';
import 'package:wise_app/presentation/screensTeacher/contacts/contacts_state.dart';

class ContactsLogicT extends GetxController {
  final ContactsStateT state = ContactsStateT();
  final box = GetStorage();
}
