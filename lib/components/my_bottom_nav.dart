import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task_jvai/theme/theme.dart';

class MyBottomNav extends StatelessWidget {
  final selectedIndex;
  void Function(int)? onTap;
  MyBottomNav({super.key, this.selectedIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      child: BottomNavigationBar(
        onTap: onTap,
        currentIndex: selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: primaryColor,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: SvgPicture.asset(
                'images/bottomnav_icons/home-icon.svg',
                width: 24,
                height: 24,
                colorFilter: ColorFilter.mode(
                  selectedIndex == 0 ? Colors.white : Colors.grey,
                  BlendMode.srcIn,
                ),
              ),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: SvgPicture.asset(
                'images/bottomnav_icons/activity-icon.svg',
                width: 24,
                height: 24,
                colorFilter: ColorFilter.mode(
                  selectedIndex == 1 ? Colors.white : Colors.grey,
                  BlendMode.srcIn,
                ),
              ),
            ),
            label: "Activity",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: SvgPicture.asset(
                'images/bottomnav_icons/settings-icon.svg',
                width: 24,
                height: 24,
                colorFilter: ColorFilter.mode(
                  selectedIndex == 2 ? Colors.white : Colors.grey,
                  BlendMode.srcIn,
                ),
              ),
            ),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
