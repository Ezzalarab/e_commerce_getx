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
                          margin: const EdgeInsets.all(5),
                          duration: const Duration(seconds: 1),
                          width: 6,
                          height: 6,
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        );
                      }),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.only(bottom: 40),
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: MaterialButton(
                      padding: const EdgeInsets.symmetric(horizontal: 100),
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
