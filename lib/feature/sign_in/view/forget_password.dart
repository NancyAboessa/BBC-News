import 'package:commingback/core/utls/app_strings/app_strings.dart';
import 'package:commingback/core/utls/app_text_styles/app_text_styles.dart';
import 'package:commingback/core/utls/widgets/app_button.dart';
import 'package:commingback/core/utls/widgets/customTextFormField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController resetPassword=TextEditingController();
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(top:70.r,left: 15.r,right: 15.r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(AppStrings.resetPassword,style: AppTextStyles.normalText(),),
              ],
            ),
            SizedBox(height: 15.h,),
            CustomTextFormField(controller: resetPassword , text: AppStrings.enterYourEmail,),
            SizedBox(height: 25.h,),
            AppButton(function: (){}, text: AppStrings.resetPassword,),
          ],
        ),
      ),
    );
  }
}
