import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task_jvai/pages/welcome_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Container(
        alignment: Alignment.center,
        width: 144,
        height: 169.66,
        child: Image.asset('images/logo.png', fit: BoxFit.contain),
      ),
      backgroundColor: const Color.fromRGBO(58, 35, 19, 1),
      nextScreen: WelcomePage(),
    );
  }
}
