import 'package:flutter/material.dart';
import 'package:flutter_task_jvai/components/activity_table.dart';
import 'package:flutter_task_jvai/components/activity_top_bar.dart';
import 'package:flutter_task_jvai/theme/theme.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    void _openDialogBox() {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            content: SizedBox(
              height: 215,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Casual Leave',
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(
                        Color.fromRGBO(194, 187, 182, 1),
                      ),
                      elevation: WidgetStateProperty.all<double?>(0),
                      fixedSize: WidgetStateProperty.all<Size>(Size(170, 54)),
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Sick Leave',
                      style: TextStyle(
                        color: secondaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(
                        Colors.white,
                      ),
                      elevation: WidgetStateProperty.all<double?>(0),
                      fixedSize: WidgetStateProperty.all<Size>(Size(170, 54)),
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Leave with pay',
                      style: TextStyle(
                        color: secondaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(
                        Colors.white,
                      ),
                      elevation: WidgetStateProperty.all<double?>(0),
                      fixedSize: WidgetStateProperty.all<Size>(Size(200, 54)),
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/notice-icon.png', width: 24, height: 24),
            Text("Leave", style: TextStyle(color: Colors.white, fontSize: 12)),
          ],
        ),
        onPressed: _openDialogBox,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      ActivityTopBar(),
                      SizedBox(height: 22),
                      Text(
                        'Today,',
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "9 hours and 9 mins",
                        style: TextStyle(color: primaryColor, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: double.infinity,
                    height: 1,
                    decoration: BoxDecoration(color: tertiaryColor),
                  ),
                ),
                ActivityTable(),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
