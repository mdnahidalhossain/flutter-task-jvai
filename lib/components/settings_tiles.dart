import 'package:flutter/material.dart';
import 'package:flutter_task_jvai/models/general_settings_model.dart';

class SettingsTiles extends StatelessWidget {
  GeneralSettingsModel generalSettings;
  void Function()? onTap;

  SettingsTiles({super.key, required this.generalSettings, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(color: Colors.transparent),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [generalSettings.title, generalSettings.icon],
          ),
        ),
      ),
    );
  }
}
