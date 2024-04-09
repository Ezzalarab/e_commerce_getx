import '../../app/exports.dart';

abstract class SignUpC extends GetxController {
  void signUp();
  void goToLogin();
}

class SignUpCImpl extends SignUpC {
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
  void signUp() {
    Get.offNamed(AppRoutes.verification);
    // Get.delete<SingUpCImpl>();
  }

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
