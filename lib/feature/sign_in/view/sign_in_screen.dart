import 'package:commingback/core/utls/app_colors/app_colors.dart';
import 'package:commingback/core/utls/app_icons/app_icons.dart';
import 'package:commingback/core/utls/app_images/app_imegas.dart';
import 'package:commingback/core/utls/app_strings/app_strings.dart';
import 'package:commingback/core/utls/app_text_styles/app_text_styles.dart';
import 'package:commingback/core/utls/widgets/app_button.dart';
import 'package:commingback/core/utls/widgets/cliked_text.dart';
import 'package:commingback/core/utls/widgets/customTextFormField.dart';
import 'package:commingback/feature/sign_in/view/forget_password.dart';
import 'package:commingback/feature/sign_up/view/sign_Up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInScreen extends StatelessWidget {
 const  SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController email=TextEditingController();
    final  TextEditingController password=TextEditingController();

    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(10.r),
        child: Column(
          children: [
            Image.asset(AppImages.logo,),
            Text(AppStrings.welcomeBack,
            style: AppTextStyles.boldText(),),
            SizedBox(height: 5.h,),
            CustomTextFormField(controller: email,text: AppStrings.email,),
             SizedBox(height: 15.h,),
            CustomTextFormField(controller: password,text: AppStrings.password,icons: AppIcons.eye,),
           Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               ClikedText(text:AppStrings.forgetPassword,function: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgetPassword()));
               }, style: AppTextStyles.normalText(),),
             ],
           ),
           const SizedBox(height: 25,),
            AppButton(function: (){}, text: AppStrings.logIn,),
            const SizedBox(height: 25,),
              ClikedText(text: AppStrings.dontHaveAnAccountSignUp,
              function: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUpScreen(),),);
              }, style: AppTextStyles.normalText(),),
          ],
        ),
      ),
    );
  }
}

