import 'package:e_commerce_getx/app/exports.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'hello': 'hello',
          'choose_language': 'Choose Language',
        },
        'ar': {
          'hello': 'مرحبا',
          'choose_language': 'اختر اللغة',
        },
      };
}
