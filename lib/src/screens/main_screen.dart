import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  // Attribute
  // (keine)

  // Konstruktor
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // State
  int x = 5;

  late TextEditingController emailController;
  late TextEditingController passwordController;

  // Methoden

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    // login in die datenbank
    print("Build ausgefuehrt");
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            TextFormField(
              controller: emailController,
            ),
            TextFormField(
              controller: passwordController,
            ),
            Text("Hallo Batch #$x"),
            FilledButton(
              onPressed: () {
                String email = emailController.text;
                String pw = passwordController.text;

                print("Rufe Login Methode auf mit: $email und $pw");
              },
              child: const Text("show form inhalt"),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
