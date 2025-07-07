import 'package:flutter/material.dart';
import 'package:flutter_task_jvai/components/my_bottom_nav.dart';
import 'package:flutter_task_jvai/constants/all_constants.dart';
import 'package:flutter_task_jvai/pages/activity_page.dart';
import 'package:flutter_task_jvai/pages/home_page.dart';
import 'package:flutter_task_jvai/pages/settings_page.dart';

class InitialNavPage extends StatefulWidget {
  const InitialNavPage({super.key});

  @override
  State<InitialNavPage> createState() => _InitialNavPageState();
}

class _InitialNavPageState extends State<InitialNavPage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List allPages = [HomePage(), ActivityPage(), SettingsPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: MyBottomNav(
        onTap: (index) => navigateBottomBar(index),
        selectedIndex: _selectedIndex,
      ),

      body: allPages[_selectedIndex],
    );
  }
}
