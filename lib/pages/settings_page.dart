import 'package:flutter/material.dart';
import 'package:flutter_task_jvai/components/settings_tiles.dart';
import 'package:flutter_task_jvai/models/general_settings_model.dart';
import 'package:flutter_task_jvai/theme/theme.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<GeneralSettingsModel> generalSettings = [];

    List<GeneralSettingsModel> getALLSettings() {
      return GeneralSettingsModel.generalSettings;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Settings"),
        centerTitle: true,
        elevation: 1,
        shadowColor: Colors.black.withOpacity(0.5),
      ),

      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                "General Settings",
                style: TextStyle(fontSize: 18, color: primaryColor),
              ),
            ),
            SizedBox(
              height: 270,
              child: Container(
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(15),
                ),

                child: ListView.builder(
                  itemCount: GeneralSettingsModel.generalSettings.length,
                  itemBuilder: (context, index) {
                    final settings =
                        GeneralSettingsModel.generalSettings[index];
                    return SettingsTiles(
                      generalSettings: settings,
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => settings.route,
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
