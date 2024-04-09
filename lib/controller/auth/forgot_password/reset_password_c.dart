import '../../../app/exports.dart';

abstract class ResetPasswordC extends GetxController {
  void resetPassword();
  void goToSuccessResetPassword();
}

class ResetPasswordCImpl extends ResetPasswordC {
  late TextEditingController password;
  late TextEditingController confirmPassword;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void onInit() {
    password = TextEditingController();
    confirmPassword = TextEditingController();

    super.onInit();
  }

  @override
  void resetPassword() {
    if (formKey.currentState!.validate()) {
      goToSuccessResetPassword();
    }
  }

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
