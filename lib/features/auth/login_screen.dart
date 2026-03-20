import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/dimensions.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_textfield.dart';
import '../../../routes/app_routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final w = AppSizes.width(context);
    final h = AppSizes.height(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: w * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: h * 0.1),

              Text(
                "Welcome Back",
                style: TextStyle(
                  fontSize: AppSizes.fontLarge(context),
                  fontWeight: FontWeight.w700,
                ),
              ),

              SizedBox(height: h * 0.01),

              const Text(
                "Login to your account",
                style: TextStyle(color: AppColors.textSecondary),
              ),

              SizedBox(height: h * 0.05),

              const CustomTextField(hint: "Email"),
              SizedBox(height: h * 0.02),
              const CustomTextField(hint: "Password", isPassword: true),

              SizedBox(height: h * 0.015),

              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: AppSizes.fontSmall(context),
                  ),
                ),
              ),

              SizedBox(height: h * 0.04),

              CustomButton(
                text: "Login",
                onPressed: () {
                  Navigator.pushReplacementNamed(context, AppRoutes.done);
                },
              ),

              SizedBox(height: h * 0.05),

              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.role);
                  },
                  child: const Text("Create Account"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}