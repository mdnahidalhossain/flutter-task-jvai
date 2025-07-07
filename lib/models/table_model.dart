class TableModel {
  final String date;
  final String day;
  final String status;
  final String checkIn;
  final String checkOut;
  final String time;

  TableModel({
    required this.date,
    required this.day,
    required this.status,
    required this.checkIn,
    required this.checkOut,
    required this.time,
  });

  static List<TableModel> table = [
    TableModel(
      date: "Date",
      day: "Day",
      status: "Status",
      checkIn: "In",
      checkOut: "Out",
      time: "Hours",
    ),
  ];
}
