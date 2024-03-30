import '../../../app/exports.dart';

abstract class ForgotPasswordC extends GetxController {
  void checkEmail();
  void goToVerifyCode();
}

class ForgotPasswordCImpl extends ForgotPasswordC {
  late TextEditingController emailC;

  @override
  void onInit() {
    emailC = TextEditingController();

    super.onInit();
  }

  @override
  void checkEmail() {}

  @override
  void goToVerifyCode() {
    Get.offNamed(AppRoutes.verification);
  }

  @override
  void dispose() {
    emailC.dispose();
    super.dispose();
  }
}
