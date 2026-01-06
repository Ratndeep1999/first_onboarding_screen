import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'background_design_widget.dart';
import 'botton_section_widget.dart';
import 'description_widget.dart';
import 'title_widget.dart';

class OnBoardingItemWidget extends StatelessWidget {
  const OnBoardingItemWidget({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Stack(
            children: [
              /// Background Circular design
              BackgroundDesignWidget(),

              /// Center Image
              Positioned(
                top: 130,
                left: 100,
                child: Image.asset(
                  'assets/onboarding/images/screen1_center_image.png',
                ),
              ),

              /// Top Left Image
              Positioned(
                top: 130,
                child: Image.asset(
                  'assets/onboarding/images/screen1_top_left_image.png',
                ),
              ),

              /// Bottom Left Image
              Positioned(
                top: 340,
                child: Image.asset(
                  'assets/onboarding/images/screen1_bottom_left_image.png',
                ),
              ),

              /// Bottom Right Image
              Positioned(
                top: 450,
                right: 0,
                child: Image.asset(
                  'assets/onboarding/images/screen1_bottom_right_image.png',
                ),
              ),
            ],
          ),
        ),

        // /// Title
        // TitleWidget(title: title),
        // SizedBox(height: 20),
        //
        // /// Description
        // DescriptionWidget(description: description),
      ],
    );
  }
}
