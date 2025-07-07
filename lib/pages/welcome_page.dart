import 'package:flutter/material.dart';
import 'package:flutter_task_jvai/components/my_button.dart';
import 'package:flutter_task_jvai/pages/login_page.dart';
import 'package:flutter_task_jvai/pages/signup_page.dart';
import 'package:flutter_task_jvai/theme/theme.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Container(
              child: Image.asset('images/welcome-bg.png', fit: BoxFit.cover),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(child: Image.asset('images/logo.png', width: 120)),
                SizedBox(height: 65),
                Text(
                  "FOCUSED ON THE FUTURE",
                  style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 26,
                  ),
                ),
                SizedBox(height: 15),
                SizedBox(
                  width: 260,
                  child: Text(
                    "TRASFORMIAMO LE CRITICITÀ IN OPPORTUNITÀ",
                    style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 65),
                Container(
                  child: Column(
                    children: [
                      MyButton(
                        text: 'SIGN IN',
                        backgroundColor: primaryColor,
                        textColor: Colors.white,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 25),
                      MyButton(
                        text: "SIGN UP",
                        backgroundColor: Colors.white,
                        textColor: primaryColor,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignupPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
