import 'package:first_onboarding_screen/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import '../widgets/description_widget.dart';
import '../widgets/title_widget.dart';
import 'screen designes/screen2_design_widget.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Screen Design
        Expanded(child: Screen2DesignWidget()),

        /// Title
        TitleWidget(title: OnBoardingText.onBoardingScreen2Title),
        SizedBox(height: 10),

        /// Description
        DescriptionWidget(
          description: OnBoardingText.onBoardingScreen2Description,
        ),
      ],
    );
  }
}
