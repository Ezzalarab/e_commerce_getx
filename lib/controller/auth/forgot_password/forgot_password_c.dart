import '../../../app/exports.dart';

abstract class ForgotPasswordC extends GetxController {
  void checkEmail();
  void goToVerifyCode();
}

class ForgotPasswordCImpl extends ForgotPasswordC {
  late TextEditingController emailC;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void onInit() {
    emailC = TextEditingController();

    super.onInit();
  }

  @override
  void checkEmail() {
    if (formKey.currentState!.validate()) {
      goToVerifyCode();
    }
  }

  @override
  void goToVerifyCode() {
    Get.offNamed(AppRoutes.verifyResetPass);
  }

  @override
  void dispose() {
    emailC.dispose();
    super.dispose();
  }
}
