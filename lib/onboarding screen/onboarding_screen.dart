import 'package:first_onboarding_screen/onboarding%20screen/widgets/screen_design_widget.dart';
import 'package:flutter/material.dart';
import 'model/text_data_entity.dart';
import 'widgets/bottom_section_widget.dart';
import 'widgets/description_widget.dart';
import 'widgets/title_widget.dart';

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
  final List<TextDataEntity> _onboardingScreenData = TextDataEntity.screenData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: _onboardingScreenData.length,
              onPageChanged: (index) {
                setState(() {
                  _pageIndex = index;
                });
              },
              pageSnapping: true,
              itemBuilder: (ctx, index) {
                /// OnBoarding Screen Item
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Screen Design
                    Flexible(child: ScreenDesignWidget()),

                    /// Title
                    TitleWidget(title: _onboardingScreenData[index].title),
                    SizedBox(height: 10),

                    /// Description
                    DescriptionWidget(
                      description: _onboardingScreenData[index].description,
                    ),
                    //SizedBox(height: 20),
                  ],
                );
              },
            ),
          ),

          /// Bottom Section
          BottomSectionWidget(
            length: _onboardingScreenData.length,
            pageIndex: _pageIndex,
          ),
        ],
      ),
    );
  }
}
