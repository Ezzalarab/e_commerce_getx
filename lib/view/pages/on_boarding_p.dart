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
                                  BorderRadius.circular(UiValues.radius10.w),
                            ),
                          );
                        }),
                      ],
                    );
                  }),
                  const Spacer(),
                  const ContinueButton()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
