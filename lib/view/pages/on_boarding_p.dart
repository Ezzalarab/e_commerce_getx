import '../../app/exports.dart';

class OnBoardingP extends StatelessWidget {
  const OnBoardingP({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingCImpl());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Test App Text Theme',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const Expanded(
              flex: 3,
              child: OnBoardingSlider(),
            ),
            Expanded(
              child: Column(
                children: [
                  GetBuilder<OnBoardingCImpl>(builder: (controller) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(LocalData.onboardingList.length,
                            (index) {
                          return AnimatedContainer(
                            margin: EdgeInsets.all(UiValues.space4.w),
                            duration: const Duration(seconds: 1),
                            width: (controller.pageIndex == index)
                                ? UiValues.space16.w
                                : UiValues.space4.w,
                            height: UiValues.space4.h,
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius:
                                  BorderRadius.circular(UiValues.radius1.w),
                            ),
                          );
                        }),
                      ],
                    );
                  }),
                  const Spacer(),
                  const OnBoardingButton()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OnBoardingButton extends GetView<OnBoardingCImpl> {
  const OnBoardingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: UiValues.space40.h),
      height: UiValues.space40.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(UiValues.radius2.w),
      ),
      child: MaterialButton(
        padding: EdgeInsets.symmetric(horizontal: UiValues.space80.w),
        color: AppColors.primary,
        textColor: AppColors.white,
        onPressed: () {
          controller.next();
        },
        child: const Text('Continue'),
      ),
    );
  }
}

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
