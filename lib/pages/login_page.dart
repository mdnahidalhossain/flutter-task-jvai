import 'package:flutter/material.dart';
import 'package:flutter_task_jvai/components/my_button.dart';
import 'package:flutter_task_jvai/components/my_textfield.dart';
import 'package:flutter_task_jvai/pages/forgot_password_page.dart';
import 'package:flutter_task_jvai/pages/initial_nav_page.dart';
import 'package:flutter_task_jvai/pages/signup_page.dart';
import 'package:flutter_task_jvai/theme/theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                    Text(
                      "Get Started Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Create an account or log in to explore our app",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 75, left: 35, right: 35),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                    child: Column(
                      children: [
                        MyTextfield(text: "Email", obscureText: false),

                        SizedBox(height: 55),

                        MyTextfield(text: "Password", obscureText: true),

                        SizedBox(height: 37),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ForgotPasswordPage(),
                                  ),
                                );
                              },
                              child: Text(
                                "Forgot password?",
                                style: TextStyle(color: primaryColor),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 47),
                        MyButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => InitialNavPage(),
                              ),
                            );
                          },
                          text: "SIGN IN",
                          backgroundColor: primaryColor,
                          textColor: Colors.white,
                        ),

                        SizedBox(height: 100),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Dont't have an account?",
                                  style: TextStyle(
                                    color: secondaryColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SignupPage(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                      color: primaryColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
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
