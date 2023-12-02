import 'package:flutter/material.dart';
import 'package:flutter_weekend/screens/to_do_screen.dart';

const homeGridList = [
  {
    'label': 'Class Schedule',
    'icon': 'schedule',
    'color': Color.fromARGB(255, 129, 204, 196),
    'navigation': "schedule",
  },
  {
    'label': 'Grades',
    'icon': 'grade',
    'color': Color.fromARGB(255, 164, 129, 204),
    'navigation': "grades",
  },
  {
    'label': 'To Do',
    'icon': "toDo",
    'color': Color.fromARGB(255, 154, 204, 129),
    'navigation': "todo",
  },
  {
    'label': 'Attendance',
    'icon': 'attendance',
    'color': Color.fromARGB(255, 115, 106, 187),
    'navigation': "attendance",
  },
  {
    'label': 'Academic Calender',
    'icon': 'academicSchedule',
    'color': Color.fromARGB(255, 190, 125, 166),
    'navigation': "calender",
  },
  {
    'label': 'Important Contacts',
    'icon': 'contacts',
    'color': Color.fromARGB(255, 47, 94, 147),
    'navigation': "contacts",
  },
  {
    'label': 'Report a problem',
    'icon': 'bug',
    'color': Color.fromARGB(255, 129, 193, 204),
    'navigation': "suggestions",
  },
  {
    'label': 'Restaurant Menu',
    'icon': 'restaurant',
    'color': Color.fromARGB(255, 163, 163, 163),
    'navigation': "food",
  },
  {
    'label': 'Help Sessions',
    'icon': 'teach',
    'color': Color.fromARGB(255, 201, 204, 129),
    'navigation': "help",
  },
  {
    'label': 'Clubs News',
    'icon': 'teach',
    'color': Color.fromARGB(255, 81, 81, 81),
    'navigation': "clubs",
  },
];

const List<String> list = <String>[
  'All',
  'Math 101',
  'ICS 101',
  'Physics 101',
  'English 214'
];

Map<int, Map<String, dynamic>> grades = {
  221: {
    'courses': [
      {
        'course': 'CHEM 101',
        'Midterm': 'N/A',
        'Final': 'A+',
      },
      {
        'course': 'CHEM 101',
        'Midterm': 'N/A',
        'Final': 'A+',
      },
      {
        'course': 'PHYS 101',
        'Midterm': 'N/A',
        'Final': 'A+',
      },
      {
        'course': 'MATH 101',
        'Midterm': 'N/A',
        'Final': 'A',
      },
    ],
    'gpa': 3.93,
  },
  222: {
    'courses': [
      {
        'course': 'MATH 102',
        'Midterm': 'N/A',
        'Final': 'A+',
      },
      {
        'course': 'PE 101',
        'Midterm': 'N/A',
        'Final': 'A+',
      },
      {
        'course': 'PHYS 102',
        'Midterm': 'N/A',
        'Final': 'A+',
      },
      {
        'course': 'ENGL 101',
        'Midterm': 'N/A',
        'Final': 'A+',
      },
      {
        'course': 'ICS 108',
        'Midterm': 'N/A',
        'Final': 'A+',
      },
      {
        'course': 'IAS 111',
        'Midterm': 'N/A',
        'Final': 'A+',
      },
    ],
    'gpa': 4.0,
  }
};
