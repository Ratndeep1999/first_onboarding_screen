import 'package:flutter/material.dart';
import '../screens/onboarding_screen1.dart';
import '../screens/onboarding_screen2.dart';
import '../screens/onboarding_screen3.dart';

class OnboardingScreensModel {
  final Widget screen;

  const OnboardingScreensModel({required this.screen});

  static const List<OnboardingScreensModel> screens = [
    OnboardingScreensModel(screen: OnboardingScreen1()),
    OnboardingScreensModel(screen: OnboardingScreen2()),
    OnboardingScreensModel(screen: OnboardingScreen3()),
  ];
}
