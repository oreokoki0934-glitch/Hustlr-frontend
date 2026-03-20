import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/dimensions.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../routes/app_routes.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    final w = AppSizes.width(context);
    final h = AppSizes.height(context);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: w * 0.05),
        child: Column(
          children: [

            SizedBox(height: h * 0.1),

            Container(
              height: h * 0.35,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(w * 0.05),
              ),
            ),

            SizedBox(height: h * 0.05),

            Text(
              "Secure Payments",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: AppSizes.fontMedium(context),
                fontWeight: FontWeight.w700,
              ),
            ),

            SizedBox(height: h * 0.015),

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

            SizedBox(height: h * 0.05),
          ],
        ),
      ),
    );
  }
}