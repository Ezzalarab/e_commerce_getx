import 'package:e_commerce_getx/app/exports.dart';

abstract class OnBoardingC extends GetxController {
  next();
  onPageChanged(int pageIndex);
}

class OnBoardingCImpl extends OnBoardingC {
  int pageIndex = 0;
  late PageController pageController;
  AppServices appServices = Get.find();

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  next() {
    if (pageIndex < LocalData.onboardingList.length - 1) {
      pageIndex++;
      pageController.animateToPage(
        pageIndex,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      // go to login
      appServices.setIsOnBoarding('1');
      Get.offAllNamed(AppRoutes.login);
    }
  }

  @override
  // ignore: avoid_renaming_method_parameters
  onPageChanged(int newPageIndex) {
    pageIndex = newPageIndex;
    update();
  }
}
