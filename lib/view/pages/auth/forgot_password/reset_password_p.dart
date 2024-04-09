import '../../../../app/exports.dart';

class ResetPasswordP extends StatelessWidget {
  const ResetPasswordP({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordCImpl controller = Get.put(ResetPasswordCImpl());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0.0,
        title: Text(
          'reset_password_page'.tr,
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
              PageTitle('reset_password'.tr),
              SizedBox(height: 10.h),
              AuthBodyText('reset_password_text'.tr),
              SizedBox(height: 70.h),
              AppTextField(
                textController: controller.password,
                validator: (value) => inputValidator(value, 5, 50, 'password'),
                label: 'password'.tr,
                hintText: 'enter_new_password'.tr,
                icon: Icons.key_outlined,
              ),
              SizedBox(height: 20.h),
              AppTextField(
                textController: controller.confirmPassword,
                validator: (value) => inputValidator(value, 5, 50, 'password'),
                label: 'confirm_password'.tr,
                hintText: 'retype_your_password'.tr,
                icon: Icons.key,
              ),
              SizedBox(height: 40.h),
              AppButton(
                title: 'reset'.tr,
                onPressed: () {
                  controller.resetPassword();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
