import '../../app/exports.dart';

abstract class AppColors {
  // Current App
  static const Color background = Colors.white;

  static const Color success = Colors.green;
  static const Color link = Colors.blue;
  static const Color error = Colors.red;
  static const Color imperialRed = Color(0xFFE54B4B);

  static const grey = _GreyColors();

  static const Color primary = Color.fromARGB(255, 0, 150, 200);
  static const Color primaryDark = Color.fromARGB(255, 0, 80, 110);

  static const Color secondary = Color.fromARGB(255, 200, 200, 0);
  static const Color secondaryDark = Color.fromARGB(255, 115, 115, 0);

  /// main text color black
  static const Color primaryText = Color.fromARGB(200, 0, 0, 0);
  static Color greyText = grey.greyB;

  static const Color white = Color.fromARGB(255, 255, 255, 255);
  static const Color black = Color.fromARGB(255, 0, 0, 0);
  static const Color trans = Color.fromARGB(0, 0, 0, 0);
}

class _GreyColors {
  const _GreyColors();
  final greyA = const Color.fromARGB(255, 220, 220, 220);
  final greyB = const Color.fromARGB(255, 180, 180, 180);
  final greyC = const Color.fromARGB(255, 150, 150, 150);
  final greyD = const Color.fromARGB(255, 120, 120, 120);
  final greyE = const Color.fromARGB(255, 80, 80, 80);
}
