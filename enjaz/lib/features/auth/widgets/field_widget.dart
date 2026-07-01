import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FieldWidget extends StatelessWidget {
  const FieldWidget({
    super.key,
    this.controller,
    this.title,
    this.icon,
    this.isNumber = false,
    this.validator,
  });

  final String? title;
  final IconData? icon;
  final bool isNumber;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 9.sh,
      child: TextFormField(
        controller: controller,
        validator: validator,
        keyboardType: isNumber ? TextInputType.number : TextInputType.text,
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          helperText: ' ',
          labelText: title,
          suffixIcon: Icon(icon, color: Theme.of(context).iconTheme.color),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        ),
        onTapOutside: (_) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
      ),
    );
  }
}
