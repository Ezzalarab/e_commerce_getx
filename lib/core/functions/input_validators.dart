import '../../app/exports.dart';

String? inputValidator(String? val, int min, int max, String type) {
  if (val == null || val.isEmpty) {
    return 'required'.tr;
  }
  if (type == 'email') {
    if (!GetUtils.isEmail(val)) {
      return 'invalid_email'.tr;
    }
  } else if (type == 'password') {
    if (val.length < min || val.length > max) {
      return 'invalid_password'.tr;
    }
  } else if (type == 'phone') {
    if (!GetUtils.isPhoneNumber(val)) {
      return 'invalid_phone'.tr;
    }
  } else if (type == 'username') {
    if (!GetUtils.isUsername(val)) {
      return 'invalid_username'.tr;
    }
  }
  return null;
}
