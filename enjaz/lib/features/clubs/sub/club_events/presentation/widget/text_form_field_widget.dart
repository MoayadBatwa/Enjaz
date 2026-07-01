import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    required this.controller,
    required this.labelText,
    required this.icon,
    this.validator,
    this.maxLines,
    this.keyboardType,
    this.hintText,
  });

  final TextEditingController controller;
  final String labelText;
  final IconData icon;
  final String? Function(String?)? validator;
  final int? maxLines;
  final TextInputType? keyboardType;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(),
      ),
      validator: validator,
    );
  }
}
