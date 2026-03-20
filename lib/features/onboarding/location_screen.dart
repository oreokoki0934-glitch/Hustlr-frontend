import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/assets.dart';
import '../../../routes/app_routes.dart';
import '../../../core/widgets/custom_button.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            const SizedBox(height: 60),

            Image.asset(AppAssets.location, width: 100),

            const SizedBox(height: 30),

            const Text(
              "How would you like\nto set your location?",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 40),

            CustomButton(
              text: "Use current location",
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.pay);
              },
            ),

            const SizedBox(height: 15),

            CustomButton(
              text: "Search manually",
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.searchLocation);
              },
            ),
          ],
        ),
      ),
    );
  }
}