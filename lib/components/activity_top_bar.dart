import 'package:flutter/material.dart';
import 'package:flutter_task_jvai/theme/theme.dart';

class ActivityTopBar extends StatelessWidget {
  const ActivityTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 204,
      height: 29,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: tertiaryColor),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Center(
          child: Text(
            "General 9:00AM to 7:00PM",
            style: TextStyle(color: const Color.fromRGBO(255, 21, 21, 1)),
          ),
        ),
      ),
    );
  }
}
