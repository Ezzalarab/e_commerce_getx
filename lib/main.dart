import 'package:e_commerce_getx/view/pages/auth/check_email_p.dart';

import 'app/exports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ChangeLocalC localeC = Get.put(ChangeLocalC());
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: 'E-commerce App',
          locale: localeC.language,
          translations: AppTranslations(),
          theme: AppTheme.lightAr,
          darkTheme: AppTheme.darkAr,
          themeMode: ThemeMode.system,
          // home: const OnBoardingP(),
          initialRoute: AppRoutes.login,
          routes: routes,
        );
      },
    );
  }
}

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.onBoarding: (context) => const OnBoardingP(),
  AppRoutes.login: (context) => const LoginP(),
  AppRoutes.signUp: (context) => const SignUpP(),
  AppRoutes.language: (context) => const LanguageP(),
  AppRoutes.forgotPassword: (context) => const ForgotPasswordP(),
  AppRoutes.verification: (context) => const VerificationP(),
  AppRoutes.resetPassword: (context) => const ResetPasswordP(),
  AppRoutes.checkEmail: (context) => const CheckEmailP(),
  AppRoutes.successResetPassword: (context) => const SuccessResetPasswordP(),
  AppRoutes.verifySuccess: (context) => const VerifySuccessP(),
  // AppRoutes.home: (context) => const HomeP(),
  // AppRoutes.productDetails: (context) => const ProductDetailsP(),
  // AppRoutes.cart: (context) => const CartP(),
  // AppRoutes.checkout: (context) => const CheckoutP(),
  // AppRoutes.orders: (context) => const OrdersP(),
  // AppRoutes.profile: (context) => const ProfileP(),
  // AppRoutes.splash: (context) => const SplashP(),
};
