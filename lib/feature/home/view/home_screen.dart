import 'package:commingback/feature/home/view_model/home_cubit.dart';
import 'package:commingback/feature/home/view_model/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..getNews(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return const Scaffold(
            body: Column(
              children: [
              ],
            ),
          );
        },
      ),
    );
  }
}
