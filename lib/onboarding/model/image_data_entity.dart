import 'package:first_onboarding_screen/utils/constants/images.dart';

class ImageDataEntity {
  final String centerImage;
  final String topLeftImage;
  final String bottomLeftImage;
  final String bottomRightImage;

  const ImageDataEntity({
    required this.centerImage,
    required this.topLeftImage,
    required this.bottomLeftImage,
    required this.bottomRightImage,
  });

  static const List<ImageDataEntity> screenImageData = [
    ImageDataEntity(
      centerImage: OnBoardingImages.onBoardingCenterImage1,
      topLeftImage: OnBoardingImages.onBoardingTopLeftImage1,
      bottomLeftImage: OnBoardingImages.onBoardingBottomLeftImage1,
      bottomRightImage: OnBoardingImages.onBoardingBottomRightImage1,
    ),
    ImageDataEntity(
      centerImage: OnBoardingImages.onBoardingCenterImage2,
      topLeftImage: OnBoardingImages.onBoardingTopLeftImage2,
      bottomLeftImage: OnBoardingImages.onBoardingBottomLeftImage1,
      bottomRightImage: OnBoardingImages.onBoardingBottomRightImage2,
    ),
    ImageDataEntity(
      centerImage: OnBoardingImages.onBoardingCenterImage3,
      topLeftImage: OnBoardingImages.onBoardingTopLeftImage3,
      bottomLeftImage: OnBoardingImages.onBoardingBottomLeftImage3,
      bottomRightImage: OnBoardingImages.onBoardingBottomRightImage3,
    ),
  ];

  // OnBoardingImages.onBoardingCenterImage1;
}
