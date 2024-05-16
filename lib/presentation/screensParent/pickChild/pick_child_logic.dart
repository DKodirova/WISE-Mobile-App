import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:wise_app/core/repositories/auth_repository/auth_repository.dart';
import 'package:wise_app/core/repositories/user_repository/user_repository.dart';
import 'package:wise_app/presentation/screensParent/calendar/calendar_state.dart';
import 'package:wise_app/presentation/screensParent/courses/courses_state.dart';
import 'package:wise_app/presentation/screensParent/pickChild/pick_child_state.dart';

class PickChildLogicP extends GetxController {
  final PickChildStateP state = PickChildStateP();

  final _authRepo = Get.put(AuthenticationRepository());
  final _userRepo = Get.put(UserRepository());

  getChildrenData() {
    final email = _authRepo.firebaseUser.value?.email;
    if (email != null) { 
      return _userRepo.getUsersChildren(email); 
    } else {
      // Get.snackbar("Here", "${email}");
    } 
  }
}
