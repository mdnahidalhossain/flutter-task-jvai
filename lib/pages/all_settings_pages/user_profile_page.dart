import 'package:flutter/material.dart';
import 'package:flutter_task_jvai/components/my_update_button.dart';
import 'package:flutter_task_jvai/components/my_button.dart';
import 'package:flutter_task_jvai/components/my_drop_down_tile.dart';
import 'package:flutter_task_jvai/theme/theme.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        elevation: 1,
        shadowColor: Colors.black.withOpacity(0.5),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 27),
        child: Column(
          children: [
            ClipOval(
              child: Image.asset(
                'images/profile-image.jpg',
                width: 126,
                height: 126,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 14),
            Text(
              "Bayu Prasetya Adji S",
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 35, left: 20, right: 20),
              child: Column(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email",
                          style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "melpeters@email.com",
                          style: TextStyle(color: primaryColor, fontSize: 14),
                        ),
                        Container(
                          width: double.infinity,
                          height: 1,
                          color: tertiaryColor,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Cell",
                          style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "+966 11 352 4444",
                          style: TextStyle(color: primaryColor, fontSize: 14),
                        ),
                        Container(
                          width: double.infinity,
                          height: 1,
                          color: tertiaryColor,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32),
                  MyDropDownTile(title: "Date of Birth", content: "23/05/1995"),
                  SizedBox(height: 32),
                  MyDropDownTile(title: "Country/Region", content: "Ethiopian"),
                  SizedBox(height: 60),
                  MyUpdateButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
