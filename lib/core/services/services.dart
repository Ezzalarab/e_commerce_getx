import 'package:e_commerce_getx/app/exports.dart';

class AppServices extends GetxService {
  late SharedPreferences prefs;

  Future<AppServices> init() async {
    prefs = await SharedPreferences.getInstance();
    return this;
  }

  String getIsOnBoarding() {
    return prefs.getString('is_on_boarding') ?? "0";
  }

  void setIsOnBoarding(String value) {
    prefs.setString('is_on_boarding', value);
  }
}

initialServices() async {
  await Get.putAsync(() => AppServices().init());
}
