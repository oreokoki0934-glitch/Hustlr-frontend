import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/dimensions.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../routes/app_routes.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    final w = AppSizes.width(context);
    final h = AppSizes.height(context);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: w * 0.05),
        child: Column(
          children: [

            SizedBox(height: h * 0.1),

            // Image placeholder (replace with your asset later)
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
              "Find Opportunities",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: AppSizes.fontMedium(context),
                fontWeight: FontWeight.w700,
              ),
            ),

            SizedBox(height: h * 0.015),

            const Text(
              "Discover new ways to earn and grow your hustle.",
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.textSecondary),
            ),

            const Spacer(),

            CustomButton(
              text: "Next",
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.onboarding2);
              },
            ),

            SizedBox(height: h * 0.05),
          ],
        ),
      ),
    );
  }
}