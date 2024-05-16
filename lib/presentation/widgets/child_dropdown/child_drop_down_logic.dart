import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:wise_app/core/repositories/auth_repository/auth_repository.dart';
import 'package:wise_app/core/repositories/user_repository/user_repository.dart';
import 'package:wise_app/presentation/screensParent/calendar/calendar_state.dart';

class ChildDropdownL extends GetxController {
  static ChildDropdownL get instance => Get.find();

  final _authRepo = Get.put(AuthenticationRepository());
  final _userRepo = Get.put(UserRepository());

  // getUserData() {
  //   final email = _authRepo.firebaseUser.value?.email;
  //   if (email != null) {
  //     return _userRepo.getUserDetails(email);
  //   } else {
  //     Get.snackbar("Here", "${email}");
  //   }
  //   AuthenticationRepository.instance.logout();
  // }
}
