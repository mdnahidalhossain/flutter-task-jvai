import 'package:flutter/material.dart';
import 'package:flutter_task_jvai/components/my_button.dart';
import 'package:flutter_task_jvai/components/my_textfield.dart';
import 'package:flutter_task_jvai/pages/password_changed_page.dart';
import 'package:flutter_task_jvai/theme/theme.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Image.asset('images/header-bg.png', fit: BoxFit.cover),
          ),

          Column(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                padding: EdgeInsets.only(top: 140, left: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 200,
                      child: Text(
                        "Reset Password",
                        softWrap: true,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: SingleChildScrollView(
                  child: Center(
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(top: 80),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Generated New Password",
                            style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.w800,
                              fontSize: 24,
                            ),
                          ),
                          SizedBox(height: 15),
                          SizedBox(
                            width: 235,
                            child: Text(
                              "Enter your new password here and make it different from previous",
                              style: TextStyle(
                                color: secondaryColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              ),
                              softWrap: true,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 50),
                          Padding(
                            padding: const EdgeInsets.only(left: 55, right: 55),
                            child: Column(
                              children: [
                                MyTextfield(
                                  text: "New Password",
                                  obscureText: true,
                                ),
                                SizedBox(height: 32),
                                MyTextfield(
                                  text: "Confrim Password",
                                  obscureText: true,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 45),
                          MyButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PasswordChangedPage(),
                                ),
                              );
                            },
                            text: "RESET",
                            backgroundColor: primaryColor,
                            textColor: Colors.white,
                          ),
                        ],
                      ),
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
