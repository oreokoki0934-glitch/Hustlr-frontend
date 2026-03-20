import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/dimensions.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final bool isPassword;

  const CustomTextField({
    super.key,
    required this.hint,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    final w = AppSizes.width(context);

    return TextField(
      obscureText: isPassword,
      style: TextStyle(fontSize: AppSizes.fontMedium(context)),
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: AppColors.inputFill,
        contentPadding: EdgeInsets.symmetric(
          horizontal: w * 0.04,
          vertical: w * 0.045,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(w * 0.04),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}