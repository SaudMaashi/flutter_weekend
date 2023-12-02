import 'package:flutter/material.dart';

class CostumizedCard extends StatelessWidget {
  const CostumizedCard(
      {super.key,
      required this.eventName,
      required this.eventImage,
      required this.clubName,
      required this.date,
      required this.time,
      required this.onDialog});
  final String time;
  final String eventName;
  final String clubName;
  final String date;
  final String eventImage;
  final String onDialog;
  @override
  Widget build(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: Text(onDialog),
      actions: [
        Center(
            child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
            Color.fromARGB(255, 26, 90, 28),
          )),
          child: const Text("Close"),
        ))
      ],
    );
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      margin: const EdgeInsets.all(15),
      child: Row(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Image(
                    image: AssetImage(eventImage),
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 17,
                  ),
                  Text(clubName),
                ],
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
          const SizedBox(
            width: 70,
          ),
          Column(
            children: [
              Text(
                eventName,
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 14,
              ),
              Text(date),
              Text(time),
            ],
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                showDialog(
                    context: context, builder: (BuildContext context) => alert);
              },
              icon: const Icon(Icons.question_mark)),
        ],
      ),
    );
  }
}
