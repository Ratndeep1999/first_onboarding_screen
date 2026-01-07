import 'package:flutter/material.dart';
import '../../../utils/constants/texts.dart';
import '../widgets/description_widget.dart';
import '../widgets/title_widget.dart';
import 'screen designes/screen3_image_design.dart';

class OnboardingScreen3 extends StatelessWidget {
  const OnboardingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Screen Design
        Expanded(child: Screen3DesignWidget()),

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
