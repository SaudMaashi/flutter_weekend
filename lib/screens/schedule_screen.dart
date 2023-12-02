import 'package:flutter/material.dart';

/// Dummy data that stores the user's classes' name, location,
/// startTime and endTime
List<Map<String, dynamic>> classes = [
  {
    'name': 'ICS202',
    'startTime': 0800,
    'endTime': 0850,
    'location': '22-119',
  },
  {
    'name': 'STAT319',
    'startTime': 0900,
    'endTime': 0950,
    'location': '59-2009',
  },
  {
    'name': 'COE202',
    'startTime': 1100,
    'endTime': 1150,
    'location': '24-250',
  },
  {
    'name': 'ISE291',
    'startTime': 1300,
    'endTime': 1350,
    'location': '59-1015',
  },
];

/// Returns a [ListView] that contain [Card] objects each with information about
/// the user's subjects and their schedule
class Schedule extends StatefulWidget {
  final bool horizontal;

  const Schedule({
    Key? key, // Don't forget to include the Key parameter
    this.horizontal = false,
  }) : super(key: key);

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  void initState() {
    super.initState();
    classes.sort((a, b) => a['startTime'].compareTo(b['startTime']));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Academic Schedule",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: ListView.builder(
          scrollDirection: widget.horizontal ? Axis.horizontal : Axis.vertical,
          itemCount: classes.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return card(index);
          }),
    );
  }

  /// Method that returns a [Card] for the user's subject inputed as the [index]
  /// to for his classes sorted by [startTime]
  Widget card(int index) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  classes[index]['name'],
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text('Location: ${classes[index]['location']}'),
              ],
            ),
            VerticalDivider(),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Start: ${convertToAmPm(classes[index]['startTime'])}'),
                SizedBox(
                  height: 15,
                ),
                Text('End: ${convertToAmPm(classes[index]['endTime'])}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// Function that converts from 24 hour format to AM, PM
/// dart
/// convertToAmPm(1300) == '1:00 A.M.'
///
String convertToAmPm(int time) {
  if (time >= 2400) {
    time = time % 2400;
  }
  if (time >= 1300) {
    return "${(time ~/ 100) - 12}:${(time % 100).toString().padLeft(2, '0')} P.M.";
  }
  if (time < 1200) {
    return "${(time ~/ 100)}:${(time % 100).toString().padLeft(2, '0')} A.M.";
  }
  return "${time ~/ 100}:${(time % 100).toString().padLeft(2, '0')} P.M.";
}
