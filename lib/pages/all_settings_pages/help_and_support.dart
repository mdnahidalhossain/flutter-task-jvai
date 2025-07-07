import 'package:flutter/material.dart';
import 'package:flutter_task_jvai/theme/theme.dart';

class HelpAndSupportPage extends StatelessWidget {
  const HelpAndSupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Help & Support"),
        centerTitle: true,
        elevation: 1,
        shadowColor: Colors.black.withOpacity(0.5),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 23,
              right: 23,
              bottom: 23,
            ),
            child: TextField(
              maxLines: 10,
              decoration: InputDecoration(
                hintText: "Describe your problem",
                hintStyle: TextStyle(color: secondaryColor),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: primaryColor),
                ),
                contentPadding: EdgeInsets.all(12),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text("Cancel", style: TextStyle(color: primaryColor)),
                style: ButtonStyle(
                  elevation: WidgetStateProperty.all<double?>(0),
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
                  fixedSize: WidgetStateProperty.all<Size>(Size(138, 39)),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  side: WidgetStateProperty.all<BorderSide>(
                    BorderSide(
                      color: primaryColor,
                      width: 1,
                    ), // 👈 Border color and width
                  ),
                ),
              ),
              SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {},
                child: Text("Send", style: TextStyle(color: Colors.white)),
                style: ButtonStyle(
                  elevation: WidgetStateProperty.all<double?>(0),
                  backgroundColor: WidgetStateProperty.all<Color>(primaryColor),
                  fixedSize: WidgetStateProperty.all<Size>(Size(138, 39)),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
