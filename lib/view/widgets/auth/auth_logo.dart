import '../../../app/exports.dart';

class AuthLogo extends StatelessWidget {
  const AuthLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImagesAssets.logo,
      height: 150.h,
    );
  }
}
