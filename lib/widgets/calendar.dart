import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {
  const Calendar(
      {super.key,
      required this.date,
      required this.activity,
      required this.week,
      required this.hegriDate});
  final String date;
  final String activity;
  final String week;
  final String hegriDate;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        color: Color.fromARGB(255, 254, 197, 197),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14))),
                  backgroundColor: const MaterialStatePropertyAll(Colors.white),
                  fixedSize: const MaterialStatePropertyAll(Size(90, 90)),
                ),
                child: Text(
                  date,
                  style: const TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            SizedBox(
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(activity),
                  const Spacer(),
                  SizedBox(
                    width: 240,
                    child: Row(
                      children: [
                        Text(week),
                        const Spacer(),
                        Text(
                          hegriDate,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
