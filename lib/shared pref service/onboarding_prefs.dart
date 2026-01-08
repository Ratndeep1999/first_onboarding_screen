import 'package:shared_preferences/shared_preferences.dart';

class OnboardingPrefs {
  /// key
  static const String _onboardingKey = 'onboarding_seen';

  /// Method to get isOnboarding value
  static Future<bool> get isOnboarding async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_onboardingKey) ?? false;
  }

  /// Method to setOnboarding value
  static Future<void> setOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_onboardingKey, true);
  }
}
