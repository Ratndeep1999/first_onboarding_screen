import 'package:first_onboarding_screen/onboarding/model/onboarding_screens_model.dart';
import 'package:flutter/material.dart';
import '../widgets/bottom_section_widget.dart';

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

  /// Onboarding Screens Model
  final List<OnboardingScreensModel> _screens = OnboardingScreensModel.screens;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              clipBehavior: Clip.hardEdge,
              onPageChanged: (index) => setState(() => _pageIndex = index),
              children: _screens.map((model) => model.screen).toList(),
            ),
          ),

          /// Bottom Section
          BottomSectionWidget(
            length: _screens.length,
            pageIndex: _pageIndex,
            pageController: _pageController,
            isLastScreen: (_pageIndex == (_screens.length - 1)),
          ),
        ],
      ),
    );
  }
}
