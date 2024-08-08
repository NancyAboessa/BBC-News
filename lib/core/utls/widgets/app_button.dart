import 'package:commingback/core/utls/app_colors/app_colors.dart';
import 'package:commingback/core/utls/app_strings/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.function,
    required this.text
  });
final  Function() function;
final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.w,width: 250.w,
      child: MaterialButton(onPressed: function,
        color: Colors.blue,
        child: Text(text,style: TextStyle(color:AppColors.white ,),),
      ),
    );
  }
}
