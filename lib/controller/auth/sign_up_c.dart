import 'dart:developer';

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
  late GlobalKey<FormState> formKey;
  late RequestStatus requestStatus;
  late SignUpDS signUpDS;

  @override
  void onInit() {
    emailC = TextEditingController();
    userNameC = TextEditingController();
    phoneC = TextEditingController();
    passwordC = TextEditingController();
    formKey = GlobalKey<FormState>();
    signUpDS = SignUpDS(Get.find<Crud>());

    super.onInit();
  }

  @override
  void signUp() async {
    if (formKey.currentState!.validate()) {
      requestStatus = RequestStatus.loading;
      update();

      var response = await signUpDS.signUp(
        name: userNameC.text,
        email: emailC.text,
        phone: phoneC.text,
        password: passwordC.text,
      );
      requestStatus = handleResponse(response);
      if (requestStatus == RequestStatus.success) {
        AppResponse appResponse = AppResponse.fromMap(response);
        log('appResponse.data.toString() verify code:');
        log(appResponse.data.toString());

        Get.offNamed(AppRoutes.verifyResetPass);
      } else {
        Get.defaultDialog(title: 'warning'.tr, middleText: 'login_failed'.tr);
        requestStatus = RequestStatus.failure;
        update();
      }
    }
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
