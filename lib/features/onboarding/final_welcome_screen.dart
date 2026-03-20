import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';

class FinalWelcomeScreen extends StatelessWidget {
  const FinalWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: const Center(
        child: Text(
          "You’re all set!",
          style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}