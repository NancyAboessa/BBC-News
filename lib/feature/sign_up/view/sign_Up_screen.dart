import 'package:commingback/core/utls/app_colors/app_colors.dart';
import 'package:commingback/core/utls/app_strings/app_strings.dart';
import 'package:commingback/core/utls/app_text_styles/app_text_styles.dart';
import 'package:commingback/core/utls/widgets/app_button.dart';
import 'package:commingback/core/utls/widgets/cliked_text.dart';
import 'package:commingback/core/utls/widgets/customTextFormField.dart';
import 'package:commingback/feature/sign_in/view/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final TextEditingController name=TextEditingController();
    final TextEditingController email=TextEditingController();
    final TextEditingController password=TextEditingController();
    final TextEditingController confirmPassweord=TextEditingController();

    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(15.r,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Text(AppStrings.letUsGetStarted,style: AppTextStyles.boldText(),),
            SizedBox(height: 15.h,),
            Text(AppStrings.createAnAccount,style: AppTextStyles.normalText(),),
            SizedBox(height: 15.h,),
            CustomTextFormField(controller:name , text: AppStrings.name,),
            SizedBox(height: 15.h,),
            CustomTextFormField(controller:email , text: AppStrings.email,),
            SizedBox(height: 15.h,),
            CustomTextFormField(controller:password , text: AppStrings.password,),
            SizedBox(height: 15.h,),
            CustomTextFormField(controller:confirmPassweord , text: AppStrings.confirmPassword,),
            SizedBox(height: 25.h,),
             AppButton(function: (){}, text: AppStrings.register),
            SizedBox(height: 25.h,),
            ClikedText(text: AppStrings.haveAnAccount, function: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignInScreen()));
            }, style: AppTextStyles.normalText(),),
          ],
        ),
      ),
    );
  }
}
