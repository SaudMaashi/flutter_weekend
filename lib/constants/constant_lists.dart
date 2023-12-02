import 'package:flutter/material.dart';
import 'package:flutter_weekend/widgets/calendar.dart';
import 'package:flutter_weekend/widgets/customized_card.dart';

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
    'icon': 'news',
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

List<Calendar> calendarList = const [
  Calendar(
      date: "Aug 27",
      activity: "REGISTRATION CONFIRMATION \n thru KFUPM Portal",
      week: "Week: 1",
      hegriDate: "11 Safar"),
  Calendar(
      date: "Aug 27",
      activity: "Classes begin",
      week: "Week: 1",
      hegriDate: "11 Safar"),
  Calendar(
      date: "Aug 29",
      activity:
          " Last day for registration \n confirmation \n (11:59 PM) - Last day \n for adding courses.",
      week: "Week: 1",
      hegriDate: "11 Safar"),
  Calendar(
      date: "Sep 7",
      activity: " Last day for dropping course(s) \n without permanent record",
      week: "Week: 2",
      hegriDate: "22 Safar"),
  Calendar(
      date: "Sep 17",
      activity: " Registration for \n Co-op/Internship \n in term 232/233",
      week: "Week: 4",
      hegriDate: "02 - 06 Rabi I"),
];

List<CostumizedCard> cardList = [
  const CostumizedCard(
      eventName: "Git & GitHub",
      eventImage: "assets/channels4_profile.jpg",
      clubName: "KFUPMCC",
      date: "29 Nov",
      time: "7:00 PM - 9:00 PM",
      onDialog: ""),
  const CostumizedCard(
      eventName: "Chess Workshop",
      eventImage: "assets/ieclub_kfupm_logo.jpeg",
      clubName: "IE Club",
      date: "30 Nov",
      time: "6:00 PM",
      onDialog: ""),
  const CostumizedCard(
      eventName: "دورة تصوير الفيديو",
      eventImage: "assets/mediacub.jpeg",
      clubName: "Media Club",
      date: "28 Nov",
      time: "7:30 PM",
      onDialog: "")
];
