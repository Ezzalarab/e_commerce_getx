import 'dart:developer';

import '../../app/exports.dart';

class ChangeLocalC extends GetxController {
  Locale? language;

  ThemeData appTheme = AppTheme.lightEn;

  AppServices appServices = Get.find();

  changeLang(String langCode) {
    Locale newLanguage = Locale(langCode);
    appServices.prefs.setString('language', langCode);
    appTheme = langCode == 'ar' ? AppTheme.lightAr : AppTheme.lightEn;
    Get.changeTheme(appTheme);
    Get.updateLocale(newLanguage);

    update();
  }

  @override
  void onInit() {
    String? prefsLang = appServices.prefs.getString('language');
    if (prefsLang == 'ar') {
      language = const Locale('ar');
      appTheme = AppTheme.lightAr;
    } else if (prefsLang == 'en') {
      language = const Locale('en');
      appTheme = AppTheme.lightEn;
    } else {
      language = Locale(Get.deviceLocale?.languageCode ?? 'en');
      appTheme = AppTheme.lightEn;
    }
    log('language is ${language.toString()}');
    super.onInit();
  }
}
