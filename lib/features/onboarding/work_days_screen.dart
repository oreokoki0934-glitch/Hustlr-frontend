import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';
import '../../../routes/app_routes.dart';
import '../../../core/widgets/custom_button.dart';

class WorkDaysScreen extends StatefulWidget {
  const WorkDaysScreen({super.key});

  @override
  State<WorkDaysScreen> createState() => _WorkDaysScreenState();
}

class _WorkDaysScreenState extends State<WorkDaysScreen> {

  List<String> selected = [];

  final days = ["Mon","Tue","Wed","Thu","Fri","Sat","Sun"];

  void toggle(String d) {
    setState(() {
      selected.contains(d) ? selected.remove(d) : selected.add(d);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            const SizedBox(height: 60),

            Wrap(
              spacing: 10,
              children: days.map((d) {
                final isSelected = selected.contains(d);

                return GestureDetector(
                  onTap: () => toggle(d),
                  child: Chip(
                    label: Text(d),
                    backgroundColor: isSelected
                        ? AppColors.primary
                        : Colors.white,
                  ),
                );
              }).toList(),
            ),

            const Spacer(),

            CustomButton(
              text: "Continue",
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.gender);
              },
            ),
          ],
        ),
      ),
    );
  }
}