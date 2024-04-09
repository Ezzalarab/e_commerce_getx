import '../../../../app/exports.dart';

class ForgotPasswordP extends StatelessWidget {
  const ForgotPasswordP({super.key});

  @override
  Widget build(BuildContext context) {
    ForgotPasswordCImpl controller = Get.put(ForgotPasswordCImpl());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0.0,
        title: Text(
          'forgot_password_page'.tr,
          style: AppTypography.h3.copyWith(color: AppColors.primary),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: controller.formKey,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40.w),
          child: ListView(
            children: [
              // const AuthLogo(),
              SizedBox(height: 30.h),
              PageTitle('check_email'.tr),
              SizedBox(height: 10.h),
              AuthBodyText('check_email_text'.tr),
              SizedBox(height: 70.h),
              AppTextField(
                textController: controller.emailC,
                validator: (value) => inputValidator(value, 5, 100, 'email'),
                label: 'email'.tr,
                hintText: 'enter_email'.tr,
                icon: Icons.email_outlined,
              ),
              SizedBox(height: 40.h),
              AppButton(
                title: 'verify'.tr,
                onPressed: () {
                  controller.checkEmail();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
