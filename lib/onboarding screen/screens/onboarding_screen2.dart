import 'package:first_onboarding_screen/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import '../widgets/description_widget.dart';
import '../widgets/title_widget.dart';
import 'screen designes/screen2_design_widget.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Screen Design
        Screen2DesignWidget(),

        /// Title
        TitleWidget(title: OnBoardingText.onBoardingScreen1Title),
        SizedBox(height: 10),

        /// Description
        DescriptionWidget(
          description: OnBoardingText.onBoardingScreen1Description,
        ),
      ],
    );
  }
}
