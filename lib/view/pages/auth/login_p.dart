import '../../../app/exports.dart';

class LoginP extends StatelessWidget {
  const LoginP({super.key});

  @override
  Widget build(BuildContext context) {
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
        child: ListView(
          children: [
            const AuthLogo(),
            SizedBox(height: 30.h),
            PageTitle('welcome'.tr),
            SizedBox(height: 10.h),
            AuthBodyText('login_text'.tr),
            SizedBox(height: 70.h),
            AppTextField(
              label: 'email'.tr,
              hintText: 'enter_email'.tr,
              icon: Icons.email_outlined,
            ),
            SizedBox(height: 20.h),
            AppTextField(
              label: 'password'.tr,
              hintText: 'enter_password'.tr,
              icon: Icons.key_outlined,
            ),
            SizedBox(height: 20.h),
            Text(
              'forgot_password'.tr,
              style: AppTypography.body1.copyWith(
                  color: AppColors.primary, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40.h),
            AppButton(
              title: 'login'.tr,
              onPressed: () {},
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                Text('dont_have_account?'.tr),
                SizedBox(width: 5.w),
                InkWell(
                  child: Text(
                    'sign_up'.tr,
                    style: AppTypography.body1.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
