import 'package:first_onboarding_screen/home_screen.dart';
import 'package:first_onboarding_screen/shared%20pref%20service/onboarding_prefs.dart';
import 'package:flutter/material.dart';
import 'dot_indicator_widget.dart';
import 'icon_button_widget.dart';

class BottomSectionWidget extends StatelessWidget {
  const BottomSectionWidget({
    super.key,
    required this.pageIndex,
    required this.length,
    required this.pageController,
    required this.isLastScreen,
  });

  final bool isLastScreen;
  final PageController pageController;
  final int pageIndex;
  final int length;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// Previous Button
          IconButtonWidget(
            onTap: _previousScreen,
            isPrevious: true,
            semanticLabel: 'Previous Page',
          ),

          /// Dot Indicator
          Row(
            children: List.generate(
              (length),
              (index) => DotIndicatorWidget(isActive: (index == pageIndex)),
            ),
          ),

          /// Next Button
          IconButtonWidget(
            onTap: () => isLastScreen ? _homeScreen(context) : _nextScreen(),
            semanticLabel: 'Next Page',
          ),
        ],
      ),
    );
  }

  /// Previous Screen Method
  void _previousScreen() {
    pageController.previousPage(
      duration: Duration(seconds: 1),
      curve: Curves.bounceOut,
    );
  }

  /// Next Screen Method
  void _nextScreen() {
    pageController.nextPage(
      duration: Duration(seconds: 1),
      curve: Curves.bounceOut,
    );
  }

  /// Home Screen Navigation Method
  _homeScreen(BuildContext context) {
    OnboardingPrefs.setOnboarding();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }
}
