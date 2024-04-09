import '../../../app/exports.dart';

abstract class VerifyResetPassC extends GetxController {
  void verify();
}

class VerifResetPassCImpl extends VerifyResetPassC {
  late TextEditingController verifyCode;

  @override
  void onInit() {
    verifyCode = TextEditingController();
    super.onInit();
  }

  @override
  void verify() {
    Get.offNamed(AppRoutes.resetPassword);
  }

  @override
  void dispose() {
    verifyCode.dispose();
    super.dispose();
  }
}
