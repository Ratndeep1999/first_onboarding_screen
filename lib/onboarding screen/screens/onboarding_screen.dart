import 'package:first_onboarding_screen/onboarding%20screen/screens/onboarding_screen1.dart';
import 'package:flutter/material.dart';
import '../model/text_data_entity.dart';
import '../widgets/bottom_section_widget.dart';
import 'onboarding_screen2.dart';
import 'onboarding_screen3.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  /// Onboarding text data from TextDataModel
  final List<TextDataEntity> _onboardingScreenTextData =
      TextDataEntity.screenTextData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ///
          PageView(
            controller: _pageController,
            clipBehavior: Clip.hardEdge,
            children: [
              // First Page
              OnboardingScreen1(),
              // Second Page
              OnboardingScreen2(),
              // Third Page
              OnboardingScreen3(),
            ],
          ),

          /// Bottom Section
          BottomSectionWidget(
            length: _onboardingScreenTextData.length,
            pageIndex: _pageIndex,
          ),
        ],
      ),
    );
  }
}
