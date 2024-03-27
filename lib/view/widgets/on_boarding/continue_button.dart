import '../../../app/exports.dart';

class ContinueButton extends GetView<OnBoardingCImpl> {
  const ContinueButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: UiValues.space40.h),
      height: UiValues.space40.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(UiValues.radius2.w),
      ),
      child: MaterialButton(
        padding: EdgeInsets.symmetric(horizontal: UiValues.space80.w),
        color: AppColors.primary,
        textColor: AppColors.white,
        onPressed: () {
          controller.next();
        },
        child: const Text('Continue'),
      ),
    );
  }
}
