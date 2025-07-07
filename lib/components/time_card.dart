import 'package:flutter/material.dart';

class TimeCard extends StatelessWidget {
  String imagePath;
  String time;
  String textlabel;
  TimeCard({
    super.key,
    required this.imagePath,
    required this.time,
    required this.textlabel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imagePath),
        SizedBox(height: 8),
        Text(
          time,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
        Text(textlabel, style: TextStyle(color: Colors.white)),
      ],
    );
  }
}
