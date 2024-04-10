import '../../../../app/exports.dart';

class VerifyResetPassP extends StatelessWidget {
  const VerifyResetPassP({super.key});

  @override
  Widget build(BuildContext context) {
    VerifResetPassCImpl controller = Get.put(VerifResetPassCImpl());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0.0,
        title: Text(
          'verification_page'.tr,
          style: AppTypography.h3.copyWith(color: AppColors.primary),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40.w),
        child: ListView(
          children: [
            // const AuthLogo(),
            SizedBox(height: 30.h),
            PageTitle('verification'.tr),
            SizedBox(height: 10.h),
            AuthBodyText('verification_text'.tr),
            SizedBox(height: 50.h),
            OtpTextField(
              fieldWidth: 50.w,
              numberOfFields: 4,
              borderColor: AppColors.primary,
              borderRadius: BorderRadius.circular(UiValues.radius20.w),
              showFieldAsBox: true,
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode) {
                controller.verify();
              },
            ),
            SizedBox(height: 40.h),
          ],
        ),
      ),
    );
  }
}
