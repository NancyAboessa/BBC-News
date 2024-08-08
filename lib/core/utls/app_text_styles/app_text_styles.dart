import 'package:commingback/core/utls/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles{
  static TextStyle boldText() => TextStyle(
        fontSize: 35.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.darkBlack,
      ) ;
  static TextStyle normalText() => TextStyle(
    color: AppColors.darkBlack,
  ) ;

}