import 'package:flutter/material.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_textfield.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [

            const SizedBox(height: 20),

            const CustomTextField(hint: "Full Name"),
            const SizedBox(height: 16),
            const CustomTextField(hint: "Email"),
            const SizedBox(height: 16),
            const CustomTextField(hint: "Password", isPassword: true),

            const SizedBox(height: 30),

            CustomButton(
              text: "Sign Up",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}