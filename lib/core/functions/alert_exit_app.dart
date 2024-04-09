import '../../app/exports.dart';

alertExitApp() {
  return Get.defaultDialog(
    title: 'alert'.tr,
    middleText: 'are_you_sure'.tr,
    textConfirm: 'yes'.tr,
    textCancel: 'no'.tr,
    onConfirm: () => SystemNavigator.pop(),
  );
}
