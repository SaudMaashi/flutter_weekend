import 'package:flutter/material.dart';
import 'package:flutter_weekend/screens/main_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _passwordTextEditingController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _emailTextEditingController,
                decoration: const InputDecoration(
                  label: Text("Enter email"),
                ),
                keyboardType: TextInputType.emailAddress,
                textCapitalization: TextCapitalization.none,
              ),
              const SizedBox(height: 24),
              TextFormField(
                controller: _passwordTextEditingController,
                decoration: const InputDecoration(
                  label: Text("Enter password"),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  if (_emailTextEditingController.text !=
                      FirebaseAuth.instance.currentUser!.email) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("You must have a KFUPM account to login"),
                      ),
                    );
                  } else {
                    FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: _emailTextEditingController.text,
                        password: _passwordTextEditingController.text);
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: ((context) {
                      return const MainScreen();
                    })));
                  }
                },
                child: const Text("Login"),
              ),
              TextButton(
                onPressed: () => launchUrl(
                  Uri.parse("https://password.kfupm.edu.sa/"),
                  mode: LaunchMode.externalApplication,
                ),
                child: const Text("Forgot your password? Reset"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
