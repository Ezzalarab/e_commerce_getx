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
          initialBinding: AppBindings(),
          initialRoute: AppRoutes.language,
          // routes: routes,
          getPages: routes,
        );
      },
    );
  }
}

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: AppRoutes.language,
    page: () => const LanguageP(),
    middlewares: [AppMiddleware()],
  ),
  GetPage(
    name: AppRoutes.onBoarding,
    page: () => const OnBoardingP(),
  ),
  GetPage(
    name: AppRoutes.login,
    page: () => const LoginP(),
  ),
  GetPage(
    name: AppRoutes.signUp,
    page: () => const SignUpP(),
  ),
  GetPage(
    name: AppRoutes.forgotPassword,
    page: () => const ForgotPasswordP(),
  ),
  GetPage(
    name: AppRoutes.verifyResetPass,
    page: () => const VerifyResetPassP(),
  ),
  GetPage(
    name: AppRoutes.verifySuccess,
    page: () => const SignUpSuccessP(),
  ),
  GetPage(
    name: AppRoutes.resetPassword,
    page: () => const ResetPasswordP(),
  ),
  GetPage(
    name: AppRoutes.successResetPassword,
    page: () => const SuccessResetPasswordP(),
  ),
  GetPage(
    name: AppRoutes.home,
    page: () => const HomeP(),
  ),
  // AppRoutes.productDetails: (context) => const ProductDetailsP(),
  // AppRoutes.cart: (context) => const CartP(),
  // AppRoutes.checkout: (context) => const CheckoutP(),
  // AppRoutes.orders: (context) => const OrdersP(),
  // AppRoutes.profile: (context) => const ProfileP(),
  // AppRoutes.splash: (context) => const SplashP(),
];
