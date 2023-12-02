import 'package:flutter/material.dart';
import 'package:flutter_weekend/constants/constant_lists.dart';

class MultipleChoiceButton extends StatefulWidget {
  const MultipleChoiceButton({super.key});

  @override
  State<MultipleChoiceButton> createState() => _MultipleChoiceButtonState();
}

class _MultipleChoiceButtonState extends State<MultipleChoiceButton> {
  String subjectValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 40,
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(24),
        ),
        child: DropdownButton<String>(
          value: subjectValue,
          icon: const RotatedBox(
              quarterTurns: 1, child: Icon(Icons.arrow_forward_ios_rounded)),
          elevation: 16,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
          underline: Container(
            height: 2,
          ),
          onChanged: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              subjectValue = value!;
            });
          },
          items: list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
