import 'package:flutter/material.dart';
import 'package:flutter_task_jvai/components/small_card.dart';
import 'package:flutter_task_jvai/components/time_card.dart';
import 'package:flutter_task_jvai/theme/theme.dart';

var myAppBar = PreferredSize(
  preferredSize: Size.fromHeight(420),
  child: AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: primaryColor,
    title: SafeArea(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Image.asset('images/profile-icon.png'),
          ),
          SizedBox(width: 9),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                'Bayu Prasetya Adji S',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Product Designer",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    ),
    flexibleSpace: Stack(
      children: [
        // Background image
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset('images/home-bg.png', fit: BoxFit.cover),
        ),

        // Transparent dark overlay
        Container(
          width: double.infinity,
          color: Colors.black.withOpacity(0.7), // adjust opacity as needed
        ),

        Container(
          padding: EdgeInsets.only(top: 100),
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                "07:40",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),

              Text(
                "Monday, 01 November",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmallCard(text: "Check In"),
                  SizedBox(width: 47),
                  SmallCard(text: "Check Out"),
                ],
              ),
              SizedBox(height: 47),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TimeCard(
                    imagePath: 'images/clock-1.png',
                    time: "07:40",
                    textlabel: "Check-In",
                  ),
                  SizedBox(width: 50),
                  TimeCard(
                    imagePath: 'images/clock-2.png',
                    time: "16:40",
                    textlabel: "Check-Out",
                  ),
                  SizedBox(width: 50),
                  TimeCard(
                    imagePath: 'images/clock-3.png',
                    time: "09h00m",
                    textlabel: "Working Hrs",
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  ),
);
