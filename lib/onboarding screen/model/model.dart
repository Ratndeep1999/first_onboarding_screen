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
  List<OnBoardingScreenModel> screenData = [
    OnBoardingScreenModel(
      title: "Hello",
      description: 'description',
      image: 'image',
    ),
  ];
}
