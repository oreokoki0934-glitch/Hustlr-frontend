import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../routes/app_routes.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [

            const SizedBox(height: 80),

            Container(
              height: 280,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20),
              ),
            ),

            const SizedBox(height: 40),

            const Text(
              "Secure Payments",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),

            const SizedBox(height: 12),

            const Text(
              "Fast and secure transactions anytime.",
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.textSecondary),
            ),

            const Spacer(),

            CustomButton(
              text: "Continue",
              onPressed: () {
                Navigator.pushReplacementNamed(context, AppRoutes.login);
              },
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}