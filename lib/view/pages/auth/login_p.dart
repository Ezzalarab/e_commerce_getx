import 'package:e_commerce_getx/core/functions/input_validators.dart';

import '../../../app/exports.dart';

class LoginP extends StatelessWidget {
  const LoginP({super.key});

  @override
  Widget build(BuildContext context) {
    LoginCImpl controller = Get.put(LoginCImpl());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0.0,
        title: Text(
          'login_page'.tr,
          style: AppTypography.h3.copyWith(color: AppColors.primary),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40.w),
        child: Form(
          key: controller.formKey,
          child: ListView(
            children: [
              const AuthLogo(),
              SizedBox(height: 30.h),
              PageTitle('welcome'.tr),
              SizedBox(height: 10.h),
              AuthBodyText('login_text'.tr),
              SizedBox(height: 70.h),
              AppTextField(
                textController: controller.emailC,
                validator: (value) => inputValidator(value, 5, 100, 'email'),
                label: 'email'.tr,
                hintText: 'enter_email'.tr,
                icon: Icons.email_outlined,
              ),
              SizedBox(height: 20.h),
              AppTextField(
                textController: controller.passwordC,
                validator: (value) => inputValidator(value, 5, 50, 'password'),
                label: 'password'.tr,
                hintText: 'enter_password'.tr,
                icon: Icons.key_outlined,
              ),
              SizedBox(height: 20.h),
              InkWell(
                onTap: () {
                  controller.goToForgotPassword();
                },
                child: Text(
                  'forgot_password'.tr,
                  style: AppTypography.body1.copyWith(
                      color: AppColors.primary, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 40.h),
              AppButton(
                title: 'login'.tr,
                onPressed: () {
                  controller.login();
                },
              ),
              SizedBox(height: 20.h),
              TextOnTapText(
                firstText: 'dont_have_account'.tr,
                onTapText: 'sign_up'.tr,
                onTap: () {
                  controller.goToSignUp();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
