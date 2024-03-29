import '../../app/exports.dart';

abstract class SignInC extends GetxController {
  void signIn();
  void goToLogin();
}

class SingInCImpl extends SignInC {
  late TextEditingController emailC;
  late TextEditingController userNameC;
  late TextEditingController phoneC;
  late TextEditingController passwordC;

  @override
  void onInit() {
    emailC = TextEditingController();
    userNameC = TextEditingController();
    phoneC = TextEditingController();
    passwordC = TextEditingController();

    super.onInit();
  }

  @override
  void signIn() {}

  @override
  void goToLogin() {
    Get.offNamed(AppRoutes.login);
  }

  @override
  void dispose() {
    emailC.dispose();
    passwordC.dispose();
    userNameC.dispose();
    phoneC.dispose();
    super.dispose();
  }
}
