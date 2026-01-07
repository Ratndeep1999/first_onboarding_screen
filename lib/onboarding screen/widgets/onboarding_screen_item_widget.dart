import 'package:flutter/material.dart';
import 'description_widget.dart';
import 'screen_design_widget.dart';
import 'title_widget.dart';

class OnBoardingScreenItemWidget extends StatelessWidget {
  const OnBoardingScreenItemWidget({
    super.key,
    required this.centerImage,
    required this.topLeftImage,
    required this.bottomLeftImage,
    required this.bottomRightImage,
    required this.title,
    required this.description,
  });

  final String centerImage;
  final String topLeftImage;
  final String bottomLeftImage;
  final String bottomRightImage;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Screen Design
        Flexible(
          child: ScreenDesignWidget(
            centerImage: centerImage,
            topLeftImage: topLeftImage,
            bottomLeftImage: bottomLeftImage,
            bottomRightImage: bottomRightImage,
          ),
        ),

        /// Title
        TitleWidget(title: title),
        SizedBox(height: 10),

        /// Description
        DescriptionWidget(description: description),
      ],
    );
  }
}
