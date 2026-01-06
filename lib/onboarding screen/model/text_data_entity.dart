class TextDataEntity {
  final String title;
  final String description;

  const TextDataEntity({required this.title, required this.description});

  /// List return objects of OnboardingScreenModel data
  static const List<TextDataEntity> screenData = [
    TextDataEntity(
      title: "Explore",
      description: 'Explore your favourite destination around the world.',
    ),
    TextDataEntity(
      title: "Easy Peasy",
      description: 'Make your travel experience very easy & peasy.',
    ),
    TextDataEntity(
      title: "Enjoy Tour",
      description: 'Enjoy your favourite destination with your love one.',
    ),
  ];
}
