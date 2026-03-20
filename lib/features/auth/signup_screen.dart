import 'package:flutter/material.dart';
import '../../../core/constants/dimensions.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_textfield.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final w = AppSizes.width(context);
    final h = AppSizes.height(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: w * 0.05),
          child: Column(
            children: [

              SizedBox(height: h * 0.03),

              const CustomTextField(hint: "Full Name"),
              SizedBox(height: h * 0.02),
              const CustomTextField(hint: "Email"),
              SizedBox(height: h * 0.02),
              const CustomTextField(hint: "Password", isPassword: true),

              SizedBox(height: h * 0.05),

              CustomButton(
                text: "Sign Up",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}