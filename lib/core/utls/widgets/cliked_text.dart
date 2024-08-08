import 'package:commingback/core/utls/app_strings/app_strings.dart';
import 'package:commingback/core/utls/app_text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class ClikedText extends StatelessWidget {
  const ClikedText({
    super.key,
    required this.text,required this.function,required this.style
  });
final String text;
final Function() function;
final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Text(text,
        // textAlign: TextAlign.start,
        style: style,),
    );
  }
}


