import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ActivityTileModel {
  final Color iconBg;
  final Widget icon;
  final String label;
  final String text;
  final String time;
  final String status;

  ActivityTileModel({
    required this.iconBg,
    required this.icon,
    required this.label,
    required this.text,
    required this.time,
    required this.status,
  });

  static List<ActivityTileModel> activity = [
    ActivityTileModel(
      iconBg: Color.fromRGBO(255, 206, 176, 1),
      icon: Icon(Icons.login, size: 14, color: Color.fromRGBO(255, 96, 0, 1)),
      label: "Clock-In",
      text: '01 November 2023',
      time: "07:40",
      status: "On-time",
    ),

    ActivityTileModel(
      iconBg: Color.fromRGBO(254, 200, 195, 1),
      icon: Icon(Icons.logout, size: 14, color: Color.fromRGBO(255, 96, 0, 1)),
      label: "Clock-Out",
      text: '01 November 2023',
      time: "16:30",
      status: "On-time",
    ),
  ];
}
