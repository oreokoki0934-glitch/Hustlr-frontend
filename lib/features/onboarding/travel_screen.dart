import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/assets.dart';
import '../../../routes/app_routes.dart';
import '../../../core/widgets/custom_button.dart';

class TravelScreen extends StatefulWidget {
  const TravelScreen({super.key});

  @override
  State<TravelScreen> createState() => _TravelScreenState();
}

class _TravelScreenState extends State<TravelScreen> {

  String selected = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [

          const SizedBox(height: 80),

          Image.asset(AppAssets.travel, width: 100),

          const SizedBox(height: 30),

          RadioListTile(
            value: "Yes",
            groupValue: selected,
            onChanged: (v) => setState(() => selected = v!),
            title: const Text("Yes"),
          ),

          RadioListTile(
            value: "No",
            groupValue: selected,
            onChanged: (v) => setState(() => selected = v!),
            title: const Text("No"),
          ),

          const Spacer(),

          CustomButton(
            text: "Continue",
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.days);
            },
          ),
        ],
      ),
    );
  }
}