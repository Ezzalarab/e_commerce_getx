import '../../../app/exports.dart';

abstract class VerificationC extends GetxController {
  void verify();
}

class VerificationCImpl extends VerificationC {
  late TextEditingController verifyCode;

  @override
  void onInit() {
    verifyCode = TextEditingController();
    super.onInit();
  }

  @override
  void verify() {
    Get.offNamed(AppRoutes.login);
  }

  @override
  void dispose() {
    verifyCode.dispose();
    super.dispose();
  }
}
