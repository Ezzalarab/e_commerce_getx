import '../../../app/exports.dart';

abstract class VerifySignUpC extends GetxController {
  void verify();
}

class VerifySignUpCImpl extends VerifySignUpC {
  late TextEditingController verifyCode;

  @override
  void onInit() {
    verifyCode = TextEditingController();
    super.onInit();
  }

  @override
  void verify() {
    Get.offNamed(AppRoutes.home);
  }

  @override
  void dispose() {
    verifyCode.dispose();
    super.dispose();
  }
}
