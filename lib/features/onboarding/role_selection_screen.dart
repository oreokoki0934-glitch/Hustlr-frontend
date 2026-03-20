import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/assets.dart';
import '../../../core/constants/app_state.dart';
import '../../../routes/app_routes.dart';
import '../../../core/widgets/custom_button.dart';

class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [

            const SizedBox(height: 70),

            Image.asset(AppAssets.logo, width: 70),

            const SizedBox(height: 10),

            const Text(
              "HUSTLR",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),

            const SizedBox(height: 40),

            const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text("Are you a"),

            const SizedBox(height: 50),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                GestureDetector(
                  onTap: () {
                    AppState.userType = "worker";
                    Navigator.pushNamed(context, AppRoutes.intro);
                  },
                  child: Column(
                    children: const [
                      Icon(Icons.star_border, size: 60),
                      SizedBox(height: 10),
                      Text("Skilled worker"),
                    ],
                  ),
                ),

                const Text("OR"),

                GestureDetector(
                  onTap: () {
                    AppState.userType = "client";
                    Navigator.pushNamed(context, AppRoutes.location);
                  },
                  child: Column(
                    children: const [
                      Icon(Icons.handshake_outlined, size: 60),
                      SizedBox(height: 10),
                      Text("Client"),
                    ],
                  ),
                ),
              ],
            ),

            const Spacer(),

            const Text("Already have an account?"),

            const SizedBox(height: 10),

            CustomButton(
              text: "Login",
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.login);
              },
            ),

            const SizedBox(height: 20),

            const Text("1.0", style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}