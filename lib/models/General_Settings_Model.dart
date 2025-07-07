import 'package:flutter/material.dart';
import 'package:flutter_task_jvai/pages/all_settings_pages/help_and_support.dart';
import 'package:flutter_task_jvai/pages/all_settings_pages/privacy_policy.dart';
import 'package:flutter_task_jvai/pages/all_settings_pages/terms_and_conditions.dart';
import 'package:flutter_task_jvai/pages/all_settings_pages/user_profile_page.dart';
import 'package:flutter_task_jvai/pages/login_page.dart';

class GeneralSettingsModel {
  final Widget title;
  final Widget route;
  final Widget icon;

  GeneralSettingsModel({
    required this.title,
    required this.route,
    required this.icon,
  });

  static List<GeneralSettingsModel> generalSettings = [
    GeneralSettingsModel(
      title: Text("User Profile", style: TextStyle(color: Colors.white)),
      route: UserProfilePage(),
      icon: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 12),
    ),
    GeneralSettingsModel(
      title: Text("Help & Support", style: TextStyle(color: Colors.white)),
      route: HelpAndSupportPage(),
      icon: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 12),
    ),
    GeneralSettingsModel(
      title: Text("Privacy Policy", style: TextStyle(color: Colors.white)),
      route: PrivacyPolicy(),
      icon: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 12),
    ),
    GeneralSettingsModel(
      title: Text("Terms & Conditionsr", style: TextStyle(color: Colors.white)),
      route: TermsAndConditionsPage(),
      icon: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 12),
    ),
    GeneralSettingsModel(
      title: Text(
        "Logout",
        style: TextStyle(color: Color.fromRGBO(232, 130, 130, 1)),
      ),
      route: LoginPage(),
      icon: Icon(
        Icons.logout,
        color: Color.fromRGBO(232, 130, 130, 1),
        size: 24,
      ),
    ),
  ];
}
