import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.text,
     this.icons
  });

  final TextEditingController controller;
  final String text;
  final IconData ?icons;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: text,
        suffixIcon: Icon(icons),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r,),

        ),
      ),
    );
  }}
