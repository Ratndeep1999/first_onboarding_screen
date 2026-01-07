import 'package:first_onboarding_screen/utils/constants/images.dart';
import 'package:flutter/material.dart';
import '../../widgets/background_design_widget.dart';

class Screen3DesignWidget extends StatelessWidget {
  const Screen3DesignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Background Circular design
        Positioned(top: 183, left: 55, child: BackgroundDesignWidget()),

        /// Center Image
        Positioned(
          top: 70,
          left: 120,
          child: Image.asset(OnBoardingImages.onBoardingCenterImage3),
        ),

        /// Top Left Image
        Positioned(
          left: 30,
          top: 110,
          child: Image.asset(OnBoardingImages.onBoardingTopLeftImage3),
        ),

        /// Bottom Left Image
        Positioned(
          top: 420,
          child: Image.asset(OnBoardingImages.onBoardingBottomLeftImage3),
        ),

        /// Bottom Right Image
        Positioned(
          top: 395,
          right: 30,
          child: Image.asset(OnBoardingImages.onBoardingBottomRightImage3),
        ),
      ],
    );
  }
}
