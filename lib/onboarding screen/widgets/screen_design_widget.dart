import 'package:flutter/material.dart';
import 'background_design_widget.dart';

class ScreenDesignWidget extends StatelessWidget {
  const ScreenDesignWidget({super.key});

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
          child: Image.asset(
            'assets/onboarding/images/screen1_center_image.png',
          ),
        ),

        /// Top Left Image
        Positioned(
          top: 90,
          child: Image.asset(
            'assets/onboarding/images/screen1_top_left_image.png',
          ),
        ),

        /// Bottom Left Image
        Positioned(
          top: 300,
          child: Image.asset(
            'assets/onboarding/images/screen1_bottom_left_image.png',
          ),
        ),

        /// Bottom Right Image
        Positioned(
          top: 400,
          right: 0,
          child: Image.asset(
            'assets/onboarding/images/screen1_bottom_right_image.png',
          ),
        ),
      ],
    );
  }
}
