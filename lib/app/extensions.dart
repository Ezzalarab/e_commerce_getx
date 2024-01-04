import 'exports.dart';

extension MediaQueryExtension on BuildContext {
  // Convenience getter for MediaQuery width and height
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
  double get screenHeightWithoutStatusBar => screenHeight - kToolbarHeight;

  // Divisions of the screen width
  double get width2 => screenWidth / 2;
  double get width3 => screenWidth / 3;
  double get width4 => screenWidth / 4;
  double get width5 => screenWidth / 5;
  double get width6 => screenWidth / 6;
  double get width8 => screenWidth / 8;
  double get width10 => screenWidth / 10;
  double get width12 => screenWidth / 12;
  double get width16 => screenWidth / 16;
  double get width20 => screenWidth / 20;
  double get width24 => screenWidth / 24;

  // Divisions of the screen height
  double get height2 => screenHeight / 2;
  double get height3 => screenHeight / 3;
  double get height4 => screenHeight / 4;
  double get height5 => screenHeight / 5;
  double get height6 => screenHeight / 6;
  double get height8 => screenHeight / 8;
  double get height10 => screenHeight / 10;
  double get height12 => screenHeight / 12;
  double get height16 => screenHeight / 16;
  double get height20 => screenHeight / 20;
  double get height24 => screenHeight / 24;
}
