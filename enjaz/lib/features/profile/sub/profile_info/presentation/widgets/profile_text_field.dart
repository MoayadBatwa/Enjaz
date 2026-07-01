import 'package:enjaz/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileTextField extends StatelessWidget {
  const ProfileTextField({
    super.key,
    required this.label,
    required this.controller,
    this.isEditing,
  });

  final String label;
  final TextEditingController controller;
  final bool? isEditing;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      readOnly: !(isEditing ?? false), // read_only/edit
      style: TextStyle(color: Theme.of(context).textTheme.bodyLarge?.color),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
        border: OutlineInputBorder(),
        filled: true,
        fillColor: (isEditing ?? false)
            ? Theme.of(context).cardColor
            : (Theme.of(context).brightness == Brightness.dark
                  ? Theme.of(context).colorScheme.surface
                  : AppColors.fixedField),
      ),
    );
  }
}
