import 'package:flutter/material.dart';

import '../features/splash/splash_screen.dart';
import '../features/onboarding/role_selection_screen.dart';
import '../features/onboarding/intro_screen.dart';
import '../features/onboarding/skills_screen.dart';
import '../features/onboarding/location_screen.dart';
import '../features/onboarding/search_location_screen.dart';
import '../features/onboarding/pay_range_screen.dart';
import '../features/onboarding/travel_screen.dart';
import '../features/onboarding/work_days_screen.dart';
import '../features/onboarding/gender_screen.dart';
import '../features/onboarding/final_welcome_screen.dart';
import '../features/auth/login_screen.dart';

class AppRoutes {
  static const splash = '/';
  static const role = '/role';
  static const login = '/login';
  static const intro = '/intro';
  static const skills = '/skills';
  static const location = '/location';
  static const searchLocation = '/search-location';
  static const pay = '/pay';
  static const travel = '/travel';
  static const days = '/days';
  static const gender = '/gender';
  static const done = '/done';

  static Map<String, WidgetBuilder> routes = {
    splash: (_) => const SplashScreen(),
    role: (_) => const RoleSelectionScreen(),
    login: (_) => const LoginScreen(),
    intro: (_) => const IntroScreen(),
    skills: (_) => const SkillsScreen(),
    location: (_) => const LocationScreen(),
    searchLocation: (_) => const SearchLocationScreen(),
    pay: (_) => const PayRangeScreen(),
    travel: (_) => const TravelScreen(),
    days: (_) => const WorkDaysScreen(),
    gender: (_) => const GenderScreen(),
    done: (_) => const FinalWelcomeScreen(),
  };
}