import 'package:enjaz/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';

class UniversityInfoCard extends StatelessWidget {
  const UniversityInfoCard({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(title, style: context.theme.textTheme.displaySmall),
        subtitle: Padding(
          padding: EdgeInsets.only(top: 4),
          child: Text(value, style: context.theme.textTheme.bodyMedium),
        ),
      ),
    );
  }
}
