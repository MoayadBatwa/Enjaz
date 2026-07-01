import 'package:enjaz/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';

class DropdownAssignSupervisorWidget extends StatelessWidget {
  const DropdownAssignSupervisorWidget({
    super.key,
    required this.items,
    required this.hint,
    required this.onChanged,
    this.isEditing,
    this.label,
    this.initialValue,
    this.validator,
  });
  final List<dynamic> items;
  final String hint;
  final Function(String?) onChanged;
  final bool? isEditing;
  final String? label;
  final String? initialValue;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      isExpanded: true,
      hint: Text(hint, style: context.theme.textTheme.bodyLarge),
      initialValue: initialValue,

      validator: validator,

      items: items.map<DropdownMenuItem<String>>((item) {
        return DropdownMenuItem(
          value: item.id,
          child: Row(
            mainAxisAlignment: .spaceBetween,
            children: [Text(item.name), Text(item.role)],
          ),
        );
      }).toList(),

      onChanged: (isEditing ?? true) ? onChanged : null,

      decoration: InputDecoration(
        border: OutlineInputBorder(),
        label: label != null ? Text(label!) : null,
      ),
    );
  }
}
