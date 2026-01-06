import 'package:flutter/material.dart';
import 'dot_indicator_widget.dart';
import 'icon_button_widget.dart';

class BottomSectionWidget extends StatelessWidget {
  const BottomSectionWidget({super.key, required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// Previous Button
          IconButtonWidget(
            onTap: () {},
            isPrevious: true,
            semanticLabel: 'Previous Page',
          ),

          /// Dot Indicator
          DotIndicatorWidget(isActive: isActive),

          /// Next Button
          IconButtonWidget(onTap: () {}, semanticLabel: 'Next Page'),
        ],
      ),
    );
  }
}
