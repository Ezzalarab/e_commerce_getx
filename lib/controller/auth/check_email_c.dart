import '../../app/exports.dart';

abstract class CheckEmailC extends GetxController {
  void checkEmail();
  void goToSuccessEmail();
}

class CheckEmailCImpl extends CheckEmailC {
  late TextEditingController emailC;

  @override
  void onInit() {
    emailC = TextEditingController();

    super.onInit();
  }

  @override
  void checkEmail() {}

  @override
  void goToSuccessEmail() {
    Get.offNamed(AppRoutes.verifySuccess);
  }

  @override
  void dispose() {
    emailC.dispose();
    super.dispose();
  }
}
