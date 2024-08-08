import 'package:commingback/core/utls/app_colors/app_colors.dart';
import 'package:commingback/core/utls/app_strings/app_strings.dart';
import 'package:commingback/core/utls/widgets/app_button.dart';
import 'package:commingback/core/utls/widgets/cliked_text.dart';
import 'package:commingback/feature/sign_in/view/sign_in_screen.dart';
import 'package:commingback/feature/sign_up/view/sign_Up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utls/app_images/app_imegas.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBlue,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppImages.logo,
          ),
          AppButton(function: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> SignInScreen(),),);
          },
          text: AppStrings.logIn,
          ),
          SizedBox(height: 10.h,),
           ClikedText(text:AppStrings.dontHaveAnAccountSignUp , function: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpScreen()));

}, style: TextStyle(color: AppColors.white),)        ],
      ),
    );
  }
}

