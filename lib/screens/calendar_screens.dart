import 'package:flutter/material.dart';
import 'package:flutter_weekend/constants/constant_lists.dart';
import 'package:flutter_weekend/constants/to_do_list.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("KFUPM Calendar"),
      ),
      body: ListView.builder(
        itemCount: calendarList.length,
        itemBuilder: (context, index) {
          return calendarList[index];
        },
      ),
    );
  }
}
