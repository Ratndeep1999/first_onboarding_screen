import 'package:first_onboarding_screen/onboarding%20screen/widgets/onboarding_screen_item_widget.dart';
import 'package:flutter/material.dart';
import 'model/image_data_entity.dart';
import 'model/text_data_entity.dart';
import 'widgets/bottom_section_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  /// Onboarding text data from TextDataModel
  final List<TextDataEntity> _onboardingScreenTextData =
      TextDataEntity.screenTextData;

  /// Onboarding image data from ImageDataModel
  final List<ImageDataEntity> _onboardingScreenImageData =
      ImageDataEntity.screenImageData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: _onboardingScreenTextData.length,
              onPageChanged: (index) => setState(() => _pageIndex = index),
              pageSnapping: true,
              itemBuilder: (ctx, index) {
                /// OnBoarding Screen Item
                return OnBoardingScreenItemWidget(
                  centerImage: _onboardingScreenImageData[index].centerImage,
                  topLeftImage: _onboardingScreenImageData[index].topLeftImage,
                  bottomLeftImage:
                      _onboardingScreenImageData[index].bottomLeftImage,
                  bottomRightImage:
                      _onboardingScreenImageData[index].bottomRightImage,
                  title: _onboardingScreenTextData[index].title,
                  description: _onboardingScreenTextData[index].description,
                );
              },
            ),
          ),

          /// Bottom Section
          BottomSectionWidget(
            length: _onboardingScreenTextData.length,
            pageIndex: _pageIndex,
          ),
        ],
      ),
    );
  }
}
