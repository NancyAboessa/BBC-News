import 'package:commingback/core/utls/app_images/app_imegas.dart';
import 'package:commingback/feature/home/view_model/home_cubit.dart';
import 'package:commingback/feature/home/view_model/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..getNews(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return  Scaffold(
            body: Padding(
              padding: EdgeInsets.all(10.r,),
              child: Column(
                children: [
               ClipRRect(
                 borderRadius: BorderRadius.circular(20.r,),
                 child: Image.asset(AppImages.newsPicture,
                 height: 300.w,width: 300.w,
                 ),
               ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
