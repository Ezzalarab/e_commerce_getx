import 'exports.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpCImpl(), fenix: true);
  }
}
