import '../../../app/exports.dart';

class SignUpP extends StatelessWidget {
  const SignUpP({super.key});

  @override
  Widget build(BuildContext context) {
    SingInCImpl controller = Get.put(SingInCImpl());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0.0,
        title: Text(
          'sign_up_page'.tr,
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
            PageTitle('welcome'.tr),
            SizedBox(height: 10.h),
            AuthBodyText('sign_up_text'.tr),
            SizedBox(height: 50.h),
            AppTextField(
              textController: controller.emailC,
              label: 'email'.tr,
              hintText: 'enter_email'.tr,
              icon: Icons.email_outlined,
            ),
            SizedBox(height: 20.h),
            AppTextField(
              textController: controller.userNameC,
              label: 'user_name'.tr,
              hintText: 'enter_user_name'.tr,
              icon: Icons.key_outlined,
            ),
            SizedBox(height: 20.h),
            AppTextField(
              textController: controller.phoneC,
              label: 'phone'.tr,
              hintText: 'enter_phone'.tr,
              icon: Icons.key_outlined,
            ),
            SizedBox(height: 20.h),
            AppTextField(
              textController: controller.passwordC,
              label: 'password'.tr,
              hintText: 'enter_password'.tr,
              icon: Icons.key_outlined,
            ),
            SizedBox(height: 40.h),
            AppButton(
              title: 'sign_up'.tr,
              onPressed: () {},
            ),
            SizedBox(height: 20.h),
            TextOnTapText(
              firstText: 'already_have_account?'.tr,
              onTapText: 'login'.tr,
              onTap: () => controller.goToLogin(),
            ),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }
}
