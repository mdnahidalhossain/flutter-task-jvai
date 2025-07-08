import 'package:flutter/material.dart';

class ActivityTable extends StatelessWidget {
  const ActivityTable({super.key});

  @override
  Widget build(BuildContext context) {
    List<TableRow> _buildTableRows() {
      final data = [
        ["06", "Thu", "Present", "10:15am", "8:00pm", "9:03"],
        ["05", "Wed", "Absent", "-", "-", "-"],
        ["06", "Tue", "Present", "10:15am", "8:00pm", "9:03"],
        ["06", "Mon", "Present", "10:15am", "8:00pm", "9:03"],
        ["06", "Sun", "Present", "10:15am", "8:00pm", "9:03"],
        ["06", "Sat", "Present", "10:15am", "8:00pm", "9:03"],
        ["06", "Fri", "", "", "", ""],
        ["06", "Thu", "Present", "10:15am", "8:00pm", "9:03"],
        ["06", "Wed", "Present", "10:15am", "8:00pm", "9:03"],
        ["06", "Tue", "Present", "10:15am", "8:00pm", "9h"],
        ["06", "Mon", "Absent", "-", "-", "-"],
        ["06", "Sun", "Present", "10:15am", "8:00pm", "9:03"],
        ["06", "Sat", "Present", "10:15am", "8:00pm", "9:03"],
      ];

      return List.generate(data.length, (index) {
        final rowData = data[index];
        final bgColor = index % 2 == 0 ? Colors.grey.shade100 : Colors.white;

        return TableRow(
          decoration: BoxDecoration(color: bgColor),
          children: rowData
              .map(
                (cell) => Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: Center(
                    child: Text(cell, style: TextStyle(fontSize: 10)),
                  ),
                ),
              )
              .toList(),
        );
      });
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Table(
        columnWidths: const {
          0: FlexColumnWidth(1),
          1: FlexColumnWidth(1),
          2: FlexColumnWidth(1),
          3: FlexColumnWidth(1),
          4: FlexColumnWidth(1),
          5: FlexColumnWidth(1),
        },
        border: const TableBorder(
          // horizontalInside: BorderSide(width: 0.5, color: Colors.grey),
        ),
        children: [
          TableRow(
            children: const [
              Padding(
                padding: EdgeInsets.all(6),
                child: Center(
                  child: Text(
                    "Date",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(6),
                child: Center(
                  child: Text(
                    "Day",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(6),
                child: Center(
                  child: Text(
                    "Status",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(6),
                child: Center(
                  child: Text(
                    "In",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(6),
                child: Center(
                  child: Text(
                    "Out",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(6),
                child: Center(
                  child: Text(
                    "Hours",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
          TableRow(
            children: List.generate(6, (_) => const SizedBox(height: 12)),
          ),
          ..._buildTableRows(),
        ],
      ),
    );
  }
}
