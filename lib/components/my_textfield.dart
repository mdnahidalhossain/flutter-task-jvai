import 'package:flutter/material.dart';
import 'package:flutter_task_jvai/theme/theme.dart';

// ignore: must_be_immutable
class MyTextfield extends StatelessWidget {
  String text;
  bool obscureText;
  // Color textColor;

  MyTextfield({
    super.key,
    required this.text,
    required this.obscureText,
    // required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
          TextField(
            obscureText: obscureText,
            style: TextStyle(color: secondaryColor),
          ),
        ],
      ),
    );
  }
}
