import '../../../app/exports.dart';

abstract class ResetPasswordC extends GetxController {
  void resetPassword();
  void goToSuccessResetPassword();
}

class ResetPasswordCImpl extends ResetPasswordC {
  late TextEditingController password;
  late TextEditingController confirmPassword;

  @override
  void onInit() {
    password = TextEditingController();
    confirmPassword = TextEditingController();

    super.onInit();
  }

  @override
  void resetPassword() {}

  @override
  void goToSuccessResetPassword() {
    Get.offNamed(AppRoutes.successResetPassword);
  }

  @override
  void dispose() {
    password.dispose();
    confirmPassword.dispose();
    super.dispose();
  }
}
