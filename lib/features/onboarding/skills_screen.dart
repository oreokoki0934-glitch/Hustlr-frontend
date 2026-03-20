import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';
import '../../../routes/app_routes.dart';
import '../../../core/widgets/custom_button.dart';

class SkillsScreen extends StatefulWidget {
  const SkillsScreen({super.key});

  @override
  State<SkillsScreen> createState() => _SkillsScreenState();
}

class _SkillsScreenState extends State<SkillsScreen> {

  List<String> selected = [];

  final skills = [
    "Cleaning","Plumbing","Electrical","Cooking",
    "Hair","Makeup","Nails",
    "Design","Photography","Video"
  ];

  void toggle(String s) {
    setState(() {
      selected.contains(s) ? selected.remove(s) : selected.add(s);
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

            const Text(
              "What services\ndo you offer?",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30),

            Expanded(
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: skills.map((s) {
                  final isSelected = selected.contains(s);

                  return GestureDetector(
                    onTap: () => toggle(s),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 10),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? AppColors.primary
                            : Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Text(
                        s,
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),

            CustomButton(
              text: "Continue",
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.location);
              },
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}