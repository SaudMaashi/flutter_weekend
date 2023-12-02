import 'package:flutter/material.dart';
import 'package:flutter_weekend/widgets/button.dart';

class HelpSessionCell extends StatelessWidget {
  final Color borderColor;
  final Color buttonColor;
  final String buttonText;
  final String subject;
  // ignore: non_constant_identifier_names
  final String time_start;
  // ignore: non_constant_identifier_names
  final String time_end;
  final String date;
  final String status;
  final Color color;
  const HelpSessionCell(
      {super.key,
      required this.subject,
      // ignore: non_constant_identifier_names
      required this.time_start,
      required this.date,
      required this.status,
      // ignore: non_constant_identifier_names
      required this.time_end,
      required this.color,
      required this.buttonText,
      required this.buttonColor,
      required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: borderColor, width: 3),
            borderRadius: BorderRadius.circular(24),
            color: color),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(),
                  Text(
                    subject,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(date)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(status),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(time_start),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text('-'),
                          ),
                          Text(time_end)
                        ],
                      ),
                    ],
                  ),
                  Button(
                    color: buttonColor,
                    text: buttonText,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

const List helpSessionContentList = [
  {
    'subject': 'Math 101',
    'date': '1 DEC',
    'state': 'Finished',
    'time_start': '2pm',
    'time_end': '4pm',
  },
  {
    'subject': 'Physics 101',
    'date': '4 DEC',
    'state': 'Online',
    'time_start': '3pm',
    'time_end': '5pm',
  },
  {
    'subject': 'ICS 101',
    'date': '25 DEC',
    'state': 'Upcoming',
    'time_start': '4pm',
    'time_end': '5pm',
  },
  {
    'subject': 'English 214',
    'date': '30 DEC',
    'state': 'Upcoming',
    'time_start': '3pm',
    'time_end': '6pm',
  },
];
