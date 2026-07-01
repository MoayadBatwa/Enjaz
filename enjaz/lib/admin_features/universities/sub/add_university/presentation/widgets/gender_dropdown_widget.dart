import 'package:flutter/material.dart';

class GenderDropdownWidget extends StatelessWidget {
  final String? value;
  final Function(String?) onChanged;
  final String? Function(String?)? validator;
  final String? label;

  const GenderDropdownWidget({
    super.key,
    required this.value,
    required this.onChanged,
    this.validator,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      initialValue: value,
      validator: validator,
      decoration: InputDecoration(border: const OutlineInputBorder()),
      items: const [
        DropdownMenuItem(value: "ذكور", child: Text("ذكور")),
        DropdownMenuItem(value: "إناث", child: Text("إناث")),
        DropdownMenuItem(value: "ذكور/إناث", child: Text("ذكور/إناث")),
      ],
      onChanged: onChanged,
    );
  }
}
