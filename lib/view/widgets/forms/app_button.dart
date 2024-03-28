import '../../../app/exports.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    required this.title,
    required this.onPressed,
    super.key,
  });
  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: AppColors.primary,
      textColor: AppColors.white,
      padding: EdgeInsets.symmetric(vertical: 10.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(UiValues.radius20),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: AppTypography.body1.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
