import 'package:flutter/material.dart';
import 'theme.dart';
import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/welcome_screen.dart';
import 'screens/signup_screen.dart';

void main() {
  runApp(const HustlrApp());
}

class HustlrApp extends StatelessWidget {
  const HustlrApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hustlr',
      theme: appTheme,

      // App starts with the logo screen
      initialRoute: '/',

      routes: {
        '/': (context) => const SplashScreen(),
        '/welcome': (context) => const WelcomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
      },
    );
  }
}