import 'package:first_onboarding_screen/onboarding%20screen/model/model.dart';
import 'package:flutter/material.dart';

class DotIndicatorWidget extends StatelessWidget {
  DotIndicatorWidget({super.key, required this.isActive});

  final bool isActive;
  final List<OnBoardingScreenModel> _onboardingScreenData =
      OnBoardingScreenModel.screenData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        _onboardingScreenData.length,
        (index) => AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: 8,
          width: 8,
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: isActive ? Colors.orange : Colors.black12,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
