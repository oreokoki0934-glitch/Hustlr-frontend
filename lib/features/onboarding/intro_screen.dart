import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/assets.dart';
import '../../../routes/app_routes.dart';
import '../../../core/widgets/custom_button.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [

            const SizedBox(height: 60),

            Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.headphones, color: Colors.black54),
            ),

            const SizedBox(height: 20),

            Image.asset(AppAssets.intro, height: 200),

            const SizedBox(height: 30),

            const Text(
              "Help us know\nyou more.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),

            const Spacer(),

            GestureDetector(
  onTap: () {
    Navigator.pushNamed(context, AppRoutes.skills);
  },
  child: Container(
    height: 55,
    width: double.infinity,
    decoration: BoxDecoration(
      color: AppColors.primary,
      borderRadius: BorderRadius.circular(14),
    ),
    alignment: Alignment.center,
    child: const Text(
      "Start",
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
    ),
  ),
),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}