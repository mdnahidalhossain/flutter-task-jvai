import 'package:flutter/material.dart';
import 'package:flutter_task_jvai/components/my_button.dart';
import 'package:flutter_task_jvai/components/my_textfield.dart';
import 'package:flutter_task_jvai/components/small_textfield.dart';
import 'package:flutter_task_jvai/pages/reset_password_page.dart';
import 'package:flutter_task_jvai/theme/theme.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

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
                        "OTP Verification",
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
                      padding: EdgeInsets.only(top: 100),
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
                            "Almost there",
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
                              "Enter the 6 digit code that send to your email address",
                              style: TextStyle(
                                color: secondaryColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              ),
                              softWrap: true,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SmallTextfield(),
                              SizedBox(width: 14),
                              SmallTextfield(),
                              SizedBox(width: 14),
                              SmallTextfield(),
                              SizedBox(width: 14),
                              SmallTextfield(),
                              SizedBox(width: 14),
                              SmallTextfield(),
                              SizedBox(width: 14),
                              SmallTextfield(),
                            ],
                          ),
                          SizedBox(height: 37),
                          Text(
                            "Resend Code",
                            style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Request new code in 00:30s",
                            style: TextStyle(
                              color: secondaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 15),
                          MyButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ResetPasswordPage(),
                                ),
                              );
                            },
                            text: "VERIFY",
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
