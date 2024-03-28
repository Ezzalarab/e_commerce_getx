import '../../../app/exports.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    required this.label,
    this.hintText,
    this.icon,
    super.key,
  });

  final String label;
  final String? hintText;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 30.w),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        label: Text(label),
        hintText: hintText,
        suffixIcon: icon != null ? Icon(icon) : Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(UiValues.radius30),
        ),
      ),
    );
  }
}
