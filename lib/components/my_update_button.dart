import 'package:flutter/material.dart';
import 'package:flutter_task_jvai/theme/theme.dart';

class MyUpdateButton extends StatelessWidget {
  void Function()? onTap;
  MyUpdateButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 152,
        height: 35,
        child: Container(
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Center(
            child: Text("Update", style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
