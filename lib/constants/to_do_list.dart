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
