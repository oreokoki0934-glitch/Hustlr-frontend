import 'package:flutter/material.dart';

class FinalWelcomeScreen extends StatelessWidget {
  const FinalWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Welcome to HUSTLR 🎉",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}