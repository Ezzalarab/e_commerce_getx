import 'package:e_commerce_getx/core/localization/change_local_c.dart';

import '../../app/exports.dart';

class LanguageP extends GetView<ChangeLocalC> {
  const LanguageP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // welcome for each language
        title: Text('hello'.tr),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('choose_language'.tr, style: AppTypography.body1),
            const SizedBox(height: 20),
            LangButton(
              title: 'English',
              onPressed: () {
                controller.changeLang('en');
                Get.toNamed(AppRoutes.onBoarding);
              },
            ),
            LangButton(
              title: 'Arabic',
              onPressed: () {
                controller.changeLang('ar');
                Get.toNamed(AppRoutes.onBoarding);
              },
            ),
          ],
        ),
      ),
    );
  }
}
