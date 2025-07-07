import 'package:flutter/material.dart';
import 'package:flutter_task_jvai/components/my_button.dart';
import 'package:flutter_task_jvai/pages/login_page.dart';
import 'package:flutter_task_jvai/theme/theme.dart';

class PasswordChangedPage extends StatelessWidget {
  const PasswordChangedPage({super.key});

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
                      padding: EdgeInsets.only(top: 136),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                      ),
                      child: Column(
                        children: [
                          Image.asset('images/success-icon.png'),
                          SizedBox(height: 30),
                          Text(
                            "Password Changed",
                            style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.w800,
                              fontSize: 26,
                            ),
                          ),
                          SizedBox(height: 15),
                          SizedBox(
                            width: 226,
                            child: Text(
                              "Your password has been changed successfully.",
                              style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                              softWrap: true,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 37),
                          MyButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ),
                              );
                            },
                            text: "Back to login",
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
