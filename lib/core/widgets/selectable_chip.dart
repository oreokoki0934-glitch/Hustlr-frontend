import 'package:flutter/material.dart';
import '../constants/dimensions.dart';

class SelectableChip extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const SelectableChip({
    super.key,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final w = AppSizes.width(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: w * 0.04,
          vertical: w * 0.025,
        ),
        decoration: BoxDecoration(
          color: selected ? const Color(0xFFA8D5C2) : Colors.white,
          borderRadius: BorderRadius.circular(w * 0.05),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: AppSizes.fontSmall(context),
            color: selected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}