import '../../../../app/exports.dart';

class SuccessResetPasswordP extends StatelessWidget {
  const SuccessResetPasswordP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(UiValues.space16),
          child: Column(
            children: [
              SizedBox(height: 40.h),
              PageTitle('check_success'.tr),
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
                  title: 'ferified_success'.tr,
                  onPressed: () {
                    Get.offNamedUntil(AppRoutes.home, (route) => false);
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
