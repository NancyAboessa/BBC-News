import 'package:commingback/core/helper/dio_helper.dart';
import 'package:commingback/feature/home/view/home_screen.dart';
import 'package:commingback/feature/sign_in/view/forget_password.dart';
import 'package:commingback/feature/sign_in/view/sign_in_screen.dart';
import 'package:commingback/feature/sign_in/view/start_screen.dart';
import 'package:commingback/feature/sign_up/view/sign_Up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  Future.wait([
    DioHelper.init(),
    ScreenUtil.ensureScreenSize(),
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return  const MaterialApp(
            home: StartScreen(),
          );
        });
  }
}
