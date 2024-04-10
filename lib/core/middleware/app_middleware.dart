import 'package:e_commerce_getx/app/exports.dart';

class AppMiddleware extends GetMiddleware {
  AppServices query = Get.find();

  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    if (query.getIsOnBoarding() == '1') {
      return const RouteSettings(name: AppRoutes.login);
    }
    return null;
    // if (Get.find<AuthC>().isLoggedOut()) {
    //   return const RouteSettings(name: AppRoutes.login);
    // }
  }
}
