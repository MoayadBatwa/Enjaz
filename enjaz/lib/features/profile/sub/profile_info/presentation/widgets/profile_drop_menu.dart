import 'package:flutter/material.dart';

class ProfileDropMenu extends StatelessWidget {
  const ProfileDropMenu({
    super.key,
    required this.controller,
    this.isEditing,
    required this.categories,
  });

  final TextEditingController controller;
  final bool? isEditing;
  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      isExpanded: true,
      initialValue: categories.contains(controller.text)
          ? controller.text
          : null,
      items: categories.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(value: value, child: Text(value));
      }).toList(),
      onChanged: (isEditing ?? false)
          ? (String? newValue) {
              if (newValue != null) {
                controller.text = newValue;
              }
            }
          : null,
      decoration: InputDecoration(border: OutlineInputBorder()),
    );
  }
}
