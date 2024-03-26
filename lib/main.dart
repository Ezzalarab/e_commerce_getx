import 'app/exports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Flutter Demo',
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          themeMode: ThemeMode.system,
          // home: const OnBoardingP(),
          initialRoute: AppRoutes.onBoarding,
          routes: routes,
        );
      },
    );
  }
}

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.onBoarding: (context) => const OnBoardingP(),
  // AppRoutes.login: (context) => const LoginP(),
  // AppRoutes.home: (context) => const HomeP(),
  // AppRoutes.productDetails: (context) => const ProductDetailsP(),
  // AppRoutes.cart: (context) => const CartP(),
  // AppRoutes.checkout: (context) => const CheckoutP(),
  // AppRoutes.orders: (context) => const OrdersP(),
  // AppRoutes.profile: (context) => const ProfileP(),
  // AppRoutes.splash: (context) => const SplashP(),
};
