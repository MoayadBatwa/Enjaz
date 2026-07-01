import 'package:enjaz/core/theme/app_section_theme.dart';
import 'package:flutter/material.dart';

extension SectionThemeExt on BuildContext {
  AppSectionTheme get sectionTheme =>
      Theme.of(this).extension<AppSectionTheme>()!;
}