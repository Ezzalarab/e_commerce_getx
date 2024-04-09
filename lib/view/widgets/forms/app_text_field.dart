import '../../../app/exports.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    required this.textController,
    required this.label,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.validator,
    this.hintText,
    this.icon,
    super.key,
  });

  final TextEditingController textController;
  final String label;
  final TextInputType keyboardType;
  final bool isPassword;
  final String? Function(String?)? validator;
  final String? hintText;
  final IconData? icon;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool isVisible = true;
  @override
  void initState() {
    isVisible = !widget.isPassword;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textController,
      validator: widget.validator,
      keyboardType: widget.keyboardType,
      obscureText: !isVisible,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 30.w),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        label: Text(widget.label),
        hintText: widget.hintText,
        suffixIcon: widget.icon != null ? Icon(widget.icon) : Icon(widget.icon),
        prefixIcon: widget.isPassword
            ? InkWell(
                onTap: () {
                  isVisible = !isVisible;
                  setState(() {});
                },
                child: isVisible
                    ? const Icon(Icons.visibility_off_outlined)
                    : const Icon(Icons.visibility_outlined),
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(UiValues.radius30),
        ),
      ),
    );
  }
}
