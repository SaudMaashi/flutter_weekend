import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weekend/constants/colors.dart';
import 'package:flutter_weekend/constants/password.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server/hotmail.dart';

/// Returns a [Scaffold] with the option to write feedback and send it. Feedback
/// is sent through SMTP (email) to a [targetEmail] from [senderEmail]
class Suggestions extends StatefulWidget {
  const Suggestions({super.key});

  @override
  State<Suggestions> createState() => _SuggestionsState();
}

String feedbackType = "Bug Report";

class _SuggestionsState extends State<Suggestions> {
  // Controller variables
  final TextEditingController _feedbackController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  /// Method to send the feedback recieved via email to be evaluated
  /// by a team later
  Future<void> _sendFeedback() async {
    String targetEmail = 's202281480@kfupm.edu.sa';
    String senderEmail = 'alaqsaakbar@hotmail.com';
    String feedback = _feedbackController.text;
    String userEmail = _emailController.text;
    final smtpServer = hotmail(senderEmail, kPassword);

    if (userEmail.isNotEmpty && !EmailValidator.validate(userEmail)) {
      userEmail = "Invalid Email";
    }

    // The message to be sent
    final message = Message()
      ..from = Address(senderEmail)
      ..recipients.add(targetEmail)
      ..subject = 'Feedback ($feedbackType)'
      ..text = '''
      Feedback Type: $feedbackType
      Feedback: $feedback
      User Email: $userEmail
      ''';

    try {
      await send(message, smtpServer);
      print('Email sent');

      _feedbackController.clear();
      _emailController.clear();

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: Duration(seconds: 3),
          content: Text(
            'Feedback sent succesfully',
            style: TextStyle(color: Colors.white),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      );
    } catch (e) {
      print('Error sending feedback email: $e');
    }
  }

  // Build method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Suggestions',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: colors['secondary'],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: feedbackPageColumn(),
        ),
      ),
    );
  }

  // Extracted method for the column
  Column feedbackPageColumn() {
    return Column(
      children: [
        TextField(
          controller: _feedbackController,
          decoration: InputDecoration(
            filled: true,
            fillColor: colors['secondary'],
            labelText: 'Suggestions/Bug Report',
          ),
        ),
        SizedBox(
          height: 15,
        ),
        TextField(
          controller: _emailController,
          decoration: InputDecoration(
            filled: true,
            fillColor: colors['secondary'],
            labelText: 'Your Email (optional)',
          ),
        ),
        SizedBox(
          height: 15,
        ),
        DropdownButton<String>(
          value: feedbackType,
          items: [
            DropdownMenuItem(
              value: 'Bug Report',
              child: Text('Bug Report'),
            ),
            DropdownMenuItem(
              value: 'Suggestion',
              child: Text('Suggestion'),
            )
          ],
          onChanged: (String? newFeedbackType) {
            setState(() {
              feedbackType = newFeedbackType!;
            });
          },
        ),
        SizedBox(
          height: 15,
        ),
        ElevatedButton(
            onPressed: _sendFeedback, child: Text('Submit Feedback')),
      ],
    );
  }
}
