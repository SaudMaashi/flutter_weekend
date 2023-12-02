import 'package:flutter/material.dart';
import 'package:flutter_weekend/widgets/help_sessons_content.dart';
import 'package:flutter_weekend/widgets/multiple_choice_button.dart';

class HelpSessionPage extends StatefulWidget {
  const HelpSessionPage({super.key});

  @override
  State<HelpSessionPage> createState() => _HelpSessionPageState();
}

class _HelpSessionPageState extends State<HelpSessionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe1f1ea),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Help Sessions"),
        backgroundColor: Colors.white,
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [MultipleChoiceButton(), HelpSessonsContent()],
      ),
    );
  }
}
