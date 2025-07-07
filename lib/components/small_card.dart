import 'package:flutter/material.dart';
import 'package:flutter_task_jvai/theme/theme.dart';

class SmallCard extends StatelessWidget {
  String text;
  void Function()? onTap;
  SmallCard({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 103,
        height: 103,
        child: Container(
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/hand-pointed.png'),
              SizedBox(height: 6),
              Text(text, style: TextStyle(color: Colors.white, fontSize: 12)),
            ],
          ),
        ),
      ),
    );
  }
}
