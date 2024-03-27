import 'package:e_commerce_getx/app/exports.dart';

class AppServices extends GetxService {
  late SharedPreferences prefs;

  Future<AppServices> init() async {
    prefs = await SharedPreferences.getInstance();
    return this;
  }
}

initialServices() async {
  await Get.putAsync(() => AppServices().init());
}
