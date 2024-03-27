import '../../../app/exports.dart';

class OnBoardingSlider extends GetView<OnBoardingCImpl> {
  const OnBoardingSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: controller.onPageChanged,
      itemCount: LocalData.onboardingList.length,
      itemBuilder: (context, index) {
        OnBoarding onBoarding = LocalData.onboardingList[index];
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              onBoarding.title,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Image.asset(
              onBoarding.image,
            ),
            Text(
              onBoarding.body,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        );
      },
    );
  }
}
