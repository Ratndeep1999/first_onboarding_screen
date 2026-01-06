class OnBoardingScreenModel {
  final String title;
  final String description;

  OnBoardingScreenModel({required this.title, required this.description});

  /// List return objects of OnboardingScreenModel data
  static List<OnBoardingScreenModel> screenData = [
    OnBoardingScreenModel(
      title: "Explore",
      description: 'Explore your favourite destination around the world.',
    ),
    OnBoardingScreenModel(
      title: "Easy Peasy",
      description: 'Make your travel experience very easy & peasy.',
    ),
    OnBoardingScreenModel(
      title: "Enjoy Tour",
      description: 'Enjoy your favourite destination with your love one.',
    ),
  ];
}
