import 'package:first_onboarding_screen/utils/constants/texts.dart';

class TextDataEntity {
  final String title;
  final String description;

  const TextDataEntity({required this.title, required this.description});

  /// List return objects of OnboardingScreenModel data
  static const List<TextDataEntity> screenTextData = [
    TextDataEntity(
      title: OnBoardingText.onBoardingScreen1Title,
      description: OnBoardingText.onBoardingScreen1Description,
    ),
    TextDataEntity(
      title: OnBoardingText.onBoardingScreen2Title,
      description: OnBoardingText.onBoardingScreen2Description,
    ),
    TextDataEntity(
      title: OnBoardingText.onBoardingScreen3Title,
      description: OnBoardingText.onBoardingScreen3Description,
    ),
  ];
}
