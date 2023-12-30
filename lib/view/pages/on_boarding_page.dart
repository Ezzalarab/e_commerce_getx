import '../../app/exports.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                itemCount: LocalData.onboardingList.length,
                itemBuilder: (context, index) {
                  OnBoarding onBoarding = LocalData.onboardingList[index];
                  return Column(
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
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(LocalData.onboardingList.length,
                          (index) {
                        return AnimatedContainer(
                          margin: EdgeInsets.all(UiValues.space4.w),
                          duration: const Duration(seconds: 1),
                          width: UiValues.space4.w,
                          height: UiValues.space4.h,
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius:
                                BorderRadius.circular(UiValues.radius1.w),
                          ),
                        );
                      }),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    margin: EdgeInsets.only(bottom: UiValues.space40.h),
                    height: UiValues.space40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(UiValues.radius2.w),
                    ),
                    child: MaterialButton(
                      padding:
                          EdgeInsets.symmetric(horizontal: UiValues.space80.w),
                      color: AppColors.primary,
                      textColor: AppColors.white,
                      onPressed: () {},
                      child: const Text('button'),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
