import 'package:commingback/core/helper/dio_helper.dart';
import 'package:commingback/feature/home/view/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  Future.wait([
    DioHelper.init(),
  ]);
  //مش عارف كنتي هتعملي اي من غيري
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
  //Muath Sharawy
}
