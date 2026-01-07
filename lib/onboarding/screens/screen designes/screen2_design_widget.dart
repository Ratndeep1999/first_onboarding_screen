import 'package:first_onboarding_screen/utils/constants/images.dart';
import 'package:flutter/material.dart';
import '../../widgets/background_design_widget.dart';

class Screen2DesignWidget extends StatelessWidget {
  const Screen2DesignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Background Circular design
        Positioned(top: 183, left: 55, child: BackgroundDesignWidget()),

        /// Center Image
        Positioned(
          top: 80,
          left: 100,
          child: Image.asset(OnBoardingImages.onBoardingCenterImage1),
        ),

        /// Top Left Image
        Positioned(
          top: 90,
          child: Image.asset(OnBoardingImages.onBoardingTopLeftImage1),
        ),

        /// Bottom Left Image
        Positioned(
          top: 300,
          child: Image.asset(OnBoardingImages.onBoardingBottomLeftImage1),
        ),

        /// Bottom Right Image
        Positioned(
          top: 400,
          right: 0,
          child: Image.asset(OnBoardingImages.onBoardingBottomRightImage1),
        ),
      ],
    );
  }
}
