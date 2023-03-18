import 'package:eazzy_fix/screen/splash_screen.dart';
import 'package:eazzy_fix/screen/signup.dart';
import 'package:eazzy_fix/screen/job_opening.dart';
import 'package:eazzy_fix/screen/employer_dashboard.dart';
import 'package:eazzy_fix/screen/comment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

import 'controller/main_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: MainBinding(),
      navigatorObservers: [FlutterSmartDialog.observer],
      builder: FlutterSmartDialog.init(),
      title: 'Eazzy Fix',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
