import 'package:flutter_weekend/widgets/calendar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum ToDoCategory { food, travel, entertaiment, study, socialMedia }

const toDoCategoryIcons = {
  ToDoCategory.food: FontAwesomeIcons.burger,
  ToDoCategory.travel: FontAwesomeIcons.plane,
  ToDoCategory.entertaiment: FontAwesomeIcons.discord,
  ToDoCategory.study: FontAwesomeIcons.graduationCap,
  ToDoCategory.socialMedia: FontAwesomeIcons.instagram,
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
      date: "Sep 17 \n    to \n Sep 21",
      activity: " Registration for \n Co-op/Internship \n in term 232/233",
      week: "Week: 4",
      hegriDate: "02 - 06 Rabi I"),
];
