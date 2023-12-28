import '../../../app/exports.dart';

class LocalData {
  static List<OnBoarding> onboardingList = [
    OnBoarding(
      title: 'Choose Product',
      body:
          'We Have a 100k Product , Choose \n Your Product From  Our \n E-commerce Shop',
      image: ImagesAssets.onBoardingImageOne,
    ),
    OnBoarding(
      title: 'Easy And Safe Paymnet',
      body: 'You can pay in cash \n or through payment gateways',
      image: ImagesAssets.onBoardingImageTwo,
    ),
    OnBoarding(
      title: 'Track Your Order',
      body: 'The order can be tracked at every stage \n until it reaches you',
      image: ImagesAssets.onBoardingImageThree,
    ),
  ];
}
