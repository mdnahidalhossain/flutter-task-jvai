import 'package:flutter/material.dart';
import 'package:flutter_task_jvai/models/Activity_Tile_Model.dart';
import 'package:flutter_task_jvai/theme/theme.dart';

class MyListTile extends StatelessWidget {
  ActivityTileModel activityModel;

  MyListTile({super.key, required this.activityModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73,
      decoration: BoxDecoration(
        // color: Colors.red,
        border: Border.all(color: secondaryColor, width: 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: activityModel.iconBg,
              ),
              child: activityModel.icon,
            ),
            SizedBox(width: 6),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    activityModel.label,
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    activityModel.text,
                    style: TextStyle(color: secondaryColor),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  activityModel.time,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(
                  activityModel.status,
                  style: TextStyle(color: secondaryColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
