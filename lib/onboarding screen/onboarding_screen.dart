import 'package:first_onboarding_screen/onboarding%20screen/model/model.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  /// Onboarding data from Model
  final List<OnBoardingScreenModel> _onboardingScreenData =
      OnBoardingScreenModel.screenData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 400),
                /// Title
                TitleWidget(),
                SizedBox(height: 20),

                /// Description
                DescriptionWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Text(
        'Explore your favourite destination around the world.',
        textAlign: TextAlign.start,
        style: TextStyle(
          fontFamily: 'Gilroy',
          color: Colors.black54,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Explore',
      style: TextStyle(
        fontFamily: 'Maecellus',
        color: Colors.black,
        fontSize: 42,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
