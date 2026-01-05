class OnBoardingScreenModel {
  final String title;
  final String description;
  final String image;

  OnBoardingScreenModel({
    required this.title,
    required this.description,
    required this.image,
  });

  /// List return objects of OnboardingScreenModel data
  static List<OnBoardingScreenModel> screenData = [
    OnBoardingScreenModel(
      title: "Explore",
      description: 'Explore your favourite destination around the world.',
      image: 'image',
    ),
    OnBoardingScreenModel(
      title: "Easy Peasy",
      description: 'Make your travel experience very easy & peasy.',
      image: 'image',
    ),
    OnBoardingScreenModel(
      title: "Enjoy Tour",
      description: 'Enjoy your favourite destination with your love one.',
      image: 'image',
    ),
  ];
}
