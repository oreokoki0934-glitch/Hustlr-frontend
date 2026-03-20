import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_textfield.dart';
import '../../../routes/app_routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(height: 60),

            const Text(
              "Welcome Back",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Login to your account",
              style: TextStyle(color: AppColors.textSecondary),
            ),

            const SizedBox(height: 40),

            const CustomTextField(hint: "Email"),
            const SizedBox(height: 16),
            const CustomTextField(hint: "Password", isPassword: true),

            const SizedBox(height: 12),

            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Forgot Password?",
                style: TextStyle(color: AppColors.primary),
              ),
            ),

            const SizedBox(height: 30),

            CustomButton(
              text: "Login",
              onPressed: () {
                Navigator.pushReplacementNamed(context, AppRoutes.home);
              },
            ),

            const Spacer(),

            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.signup);
                },
                child: const Text("Create Account"),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}