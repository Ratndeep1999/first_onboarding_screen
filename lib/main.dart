import 'package:first_onboarding_screen/shared%20pref%20service/onboarding_prefs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home_screen.dart';
import 'onboarding/screens/onboarding_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// get bool value from isOnboarding method
  final bool isOnboarding = await OnboardingPrefs.isOnboarding;

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // ✅ removes black strip
      statusBarIconBrightness: Brightness.dark, // for light background
      statusBarBrightness: Brightness.light, // iOS
    ),
  );

  runApp(MyApp(seen: isOnboarding));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.seen});

  final bool seen;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      title: 'First onboarding Design',
      home: seen ? HomeScreen() : OnboardingScreen(),
    );
  }
}
