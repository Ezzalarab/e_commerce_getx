import '../../../app/exports.dart';

class TextOnTapText extends StatelessWidget {
  const TextOnTapText({
    required this.firstText,
    required this.onTapText,
    required this.onTap,
    super.key,
  });

  final String firstText;
  final String onTapText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(firstText),
        SizedBox(width: 5.w),
        InkWell(
          onTap: onTap,
          child: Text(
            onTapText,
            style: AppTypography.body1.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
