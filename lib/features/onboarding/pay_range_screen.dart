import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/assets.dart';
import '../../../core/constants/app_state.dart';
import '../../../routes/app_routes.dart';
import '../../../core/widgets/custom_button.dart';

class PayRangeScreen extends StatefulWidget {
  const PayRangeScreen({super.key});

  @override
  State<PayRangeScreen> createState() => _PayRangeScreenState();
}

class _PayRangeScreenState extends State<PayRangeScreen> {

  double value = 50000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            const SizedBox(height: 60),

            Image.asset(AppAssets.pay, width: 100),

            const SizedBox(height: 30),

            Text(
              "₦${value.toInt()}",
              style: TextStyle(
                  fontSize: 28, fontWeight: FontWeight.bold),
            ),

            Slider(
              activeColor: AppColors.primary,
              value: value,
              min: 0,
              max: 200000,
              onChanged: (v) => setState(() => value = v),
            ),

            const Spacer(),

            CustomButton(
              text: "Continue",
              onPressed: () {
                if (AppState.userType == "worker") {
                  Navigator.pushNamed(context, AppRoutes.travel);
                } else {
                  Navigator.pushNamed(context, AppRoutes.gender);
                }
              },
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}