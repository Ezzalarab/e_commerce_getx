import 'dart:developer';

import '../../app/exports.dart';

class ChangeLocalC extends GetxController {
  Locale? language;

  AppServices appServices = Get.find();

  changeLang(String langCode) {
    Locale newLanguage = Locale(langCode);
    appServices.prefs.setString('language', langCode);
    Get.updateLocale(newLanguage);
    update();
  }

  @override
  void onInit() {
    String? prefsLang = appServices.prefs.getString('language');
    if (prefsLang == 'ar') {
      language = const Locale('ar');
    } else if (prefsLang == 'en') {
      language = const Locale('en');
    } else {
      language = Locale(Get.deviceLocale?.languageCode ?? 'en');
    }
    log('language is ${language.toString()}');
    super.onInit();
  }
}
