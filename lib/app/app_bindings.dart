import 'exports.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
    Get.lazyPut(() => SignUpCImpl(), fenix: true);
  }
}
