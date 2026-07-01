import 'package:enjaz/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';

class ProfileSectionTitle extends StatelessWidget {
  const ProfileSectionTitle({super.key, required this.sectionTitle});

  final String sectionTitle;

  @override
  Widget build(BuildContext context) {
    return Text(sectionTitle, style: context.theme.textTheme.titleLarge);
  }
}
