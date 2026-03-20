import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/assets.dart';
import '../../../routes/app_routes.dart';
import '../../../core/widgets/custom_button.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({super.key});

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {

  String selected = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [

          const SizedBox(height: 80),

          Image.asset(AppAssets.gender, width: 100),

          RadioListTile(
            value: "Male",
            groupValue: selected,
            onChanged: (v) => setState(() => selected = v!),
            title: const Text("Male"),
          ),

          RadioListTile(
            value: "Female",
            groupValue: selected,
            onChanged: (v) => setState(() => selected = v!),
            title: const Text("Female"),
          ),

          RadioListTile(
            value: "Prefer not to say",
            groupValue: selected,
            onChanged: (v) => setState(() => selected = v!),
            title: const Text("Prefer not to say"),
          ),

          const Spacer(),

          CustomButton(
            text: "Finish",
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.done);
            },
          ),
        ],
      ),
    );
  }
}