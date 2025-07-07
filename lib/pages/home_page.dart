import 'package:flutter/material.dart';
import 'package:flutter_task_jvai/components/my_list_tile.dart';
import 'package:flutter_task_jvai/constants/all_constants.dart';
import 'package:flutter_task_jvai/models/Activity_Tile_Model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // List<ActivityTileModel> activityModel = [];
    List<ActivityTileModel> getALLActivity() {
      return ActivityTileModel.activity;
    }

    return Scaffold(
      appBar: myAppBar,
      body: Container(
        color: Colors.white, // background color
        width: double.infinity,
        height: double.infinity, // fill the space inside Scaffold's body
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 21, right: 21, top: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Your Activity",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: ActivityTileModel.activity.length,
                  itemBuilder: (context, index) {
                    ActivityTileModel activityModel = getALLActivity()[index];
                    return Padding(
                      padding: const EdgeInsets.only(
                        top: 8,
                        left: 21,
                        right: 21,
                        bottom: 8,
                      ),
                      child: MyListTile(activityModel: activityModel),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
