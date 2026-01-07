import 'package:flutter/material.dart';
import 'background_design_widget.dart';

class ScreenDesignWidget extends StatelessWidget {
  const ScreenDesignWidget({
    super.key,
    required this.centerImage,
    required this.topLeftImage,
    required this.bottomLeftImage,
    required this.bottomRightImage,
  });

  final String centerImage;
  final String topLeftImage;
  final String bottomLeftImage;
  final String bottomRightImage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Background Circular design
        Positioned(top: 183, left: 55, child: BackgroundDesignWidget()),

        /// Center Image
        Positioned(top: 80, left: 100, child: Image.asset(centerImage)),

        /// Top Left Image
        Positioned(top: 90, child: Image.asset(topLeftImage)),

        /// Bottom Left Image
        Positioned(top: 300, child: Image.asset(bottomLeftImage)),

        /// Bottom Right Image
        Positioned(top: 400, right: 0, child: Image.asset(bottomRightImage)),
      ],
    );
  }
}
