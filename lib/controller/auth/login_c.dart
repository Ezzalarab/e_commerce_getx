import '../../app/exports.dart';

abstract class LoginC extends GetxController {
  void login();
  void goToForgotPassword();
  void goToSignUp();
}

class LoginCImpl extends LoginC {
  late TextEditingController emailC;
  late TextEditingController passwordC;

  @override
  void onInit() {
    emailC = TextEditingController();
    passwordC = TextEditingController();

    super.onInit();
  }

  @override
  void login() {}
  @override
  void goToForgotPassword() {
    Get.toNamed(AppRoutes.forgotPassword);
  }

  @override
  void goToSignUp() {
    Get.toNamed(AppRoutes.signUp);
  }

  @override
  void dispose() {
    emailC.dispose();
    passwordC.dispose();
    super.dispose();
  }
}
