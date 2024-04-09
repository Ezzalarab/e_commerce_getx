import '../../../../app/exports.dart';

class ResetPassSuccessP extends StatelessWidget {
  const ResetPassSuccessP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(UiValues.space16),
          child: Column(
            children: [
              SizedBox(height: 40.h),
              PageTitle('verification_success'.tr),
              SizedBox(height: 40.h),
              Center(
                child: Icon(
                  Icons.check,
                  size: 200.w,
                  color: AppColors.primary,
                ),
              ),
              const Spacer(),
              SizedBox(
                width: Get.width,
                child: AppButton(
                  title: 'ferification_success'.tr,
                  onPressed: () {
                    Get.offNamedUntil(AppRoutes.login, (route) => false);
                  },
                ),
              ),
              SizedBox(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }
}
