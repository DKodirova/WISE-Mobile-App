//open -a Simulator.app
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:wise_app/core/di/app_init.dart';
import 'package:wise_app/firebase_options.dart';

import 'presentation/app.dart';
//TODO
//Teacher edit functionatlity
//back end
//calendar
//chat
Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // initDi();
  // await GetStorage.init();
  // cameras = await availableCameras();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  //  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  await initApp();
  runApp(const App());
}
