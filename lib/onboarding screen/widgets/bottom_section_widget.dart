import 'package:flutter/material.dart';
import 'dot_indicator_widget.dart';
import 'icon_button_widget.dart';

class BottomSectionWidget extends StatelessWidget {
  const BottomSectionWidget({
    super.key,
    required this.pageIndex,
    required this.length,
  });

  final int pageIndex;
  final int length;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
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
          Row(
            children: List.generate(
              (length),
              (index) => DotIndicatorWidget(isActive: (index == pageIndex)),
            ),
          ),

          /// Next Button
          IconButtonWidget(onTap: () {}, semanticLabel: 'Next Page'),
        ],
      ),
    );
  }
}
