import '../../../app/exports.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    required this.textController,
    required this.label,
    this.validator,
    this.hintText,
    this.icon,
    super.key,
  });

  final TextEditingController textController;
  final String label;
  final String? Function(String?)? validator;
  final String? hintText;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      validator: validator,
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
