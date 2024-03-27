import '../../app/exports.dart';

class LangButton extends StatelessWidget {
  const LangButton({
    required this.title,
    required this.onPressed,
    super.key,
  });

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(
        color: AppColors.primary,
        textColor: AppColors.white,
        child: Text(
          title,
          style: AppTypography.body1.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
