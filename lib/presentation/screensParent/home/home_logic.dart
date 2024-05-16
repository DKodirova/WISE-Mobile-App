import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:wise_app/core/repositories/auth_repository/auth_repository.dart';
import 'package:wise_app/presentation/screensParent/calendar/calendar_state.dart';

class HomeLogicP extends GetxController {
  final CalendarStateP state = CalendarStateP();

  void logOut() {
    AuthenticationRepository.instance.logout();
  }
}
