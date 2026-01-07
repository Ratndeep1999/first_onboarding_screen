import 'package:flutter/material.dart';
import 'dot_indicator_widget.dart';
import 'icon_button_widget.dart';

class BottomSectionWidget extends StatelessWidget {
  const BottomSectionWidget({
    super.key,
    required this.pageIndex,
    required this.length,
    required this.pageController,
  });

  final PageController pageController;
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
            onTap: _previousScreen,
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
          IconButtonWidget(onTap: _nextScreen, semanticLabel: 'Next Page'),
        ],
      ),
    );
  }

  /// Previous Screen Method
  void _previousScreen() {
    pageController.previousPage(
      duration: Duration(seconds: 1),
      curve: Curves.bounceOut,
    );
  }

  /// Next Screen Method
  void _nextScreen() {
    pageController.nextPage(
      duration: Duration(seconds: 1),
      curve: Curves.bounceOut,
    );
  }
}
