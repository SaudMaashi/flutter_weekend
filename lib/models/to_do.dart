import 'package:flutter/material.dart';

class ToDo {
  final Widget leading;
  final Widget title;
  final DateTime? date;
  final Widget trailing;
  bool isDone;
  ToDo({
    required this.leading,
    required this.title,
    required this.date,
    required this.trailing,
    this.isDone = false,
  });
}
