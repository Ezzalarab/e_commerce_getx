import 'dart:developer';

import '../../../app/exports.dart';

abstract class VerifySignUpC extends GetxController {
  void verify(String verifyCode);
}

class VerifySignUpCImpl extends VerifySignUpC {
  String? email;
  RequestStatus? requestStatus;
  late VerifySignUpDS verifySignUpDS;

  @override
  void onInit() {
    email = Get.arguments['email'];
    verifySignUpDS = VerifySignUpDS(Get.find<Crud>());
    super.onInit();
  }

  @override
  void verify(String verifyCode) async {
    if (email != null) {
      requestStatus = RequestStatus.loading;
      update();
      var response = await verifySignUpDS.verify(
        email: email!,
        verifyCode: verifyCode,
      );
      log(response.toString());
      requestStatus = handleResponse(response);
      if (requestStatus == RequestStatus.success) {
        AppResponse appResponse = AppResponse.fromMap(response);
        log('appResponse.toMap().toString()');
        log(appResponse.toMap().toString());

        Get.offNamed(AppRoutes.verifySuccess);
      } else {
        Get.defaultDialog(title: 'warning'.tr, middleText: 'login_failed'.tr);
        requestStatus = RequestStatus.failure;
        update();
      }
    } else {
      Get.defaultDialog(title: 'warning'.tr, middleText: 'email_not_found'.tr);
      requestStatus = RequestStatus.failure;
      update();
    }
  }
}
