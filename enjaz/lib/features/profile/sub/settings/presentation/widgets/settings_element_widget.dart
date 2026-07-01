import 'package:enjaz/core/constants/app_colors.dart';
import 'package:enjaz/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';

class SettingsElementWidget extends StatelessWidget {
  const SettingsElementWidget({
    super.key,
    required this.label,
    this.switchValue,
    this.color,
    this.colorSwitchOn,
    this.colorSwitchOff,
    this.icon,
    this.iconSwitchOn,
    this.iconSwitchOff,
    this.onChanged,
  });

  final String label;

  final Color? color;
  final Color? colorSwitchOn;
  final Color? colorSwitchOff;

  final IconData? icon;
  final IconData? iconSwitchOn;
  final IconData? iconSwitchOff;

  final bool? switchValue;
  final Function(bool value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: .zero,

      leading: Icon(
        (switchValue != null)
            ? switchValue!
                  ? iconSwitchOn
                  : iconSwitchOff
            : icon,
        size: 24,
        color: (switchValue != null)
            ? switchValue!
                  ? colorSwitchOn
                  : colorSwitchOff
            : color,
      ),

      title: Text(label, style: context.theme.textTheme.titleLarge),

      trailing: (switchValue != null)
          ? Switch(
              activeThumbColor: AppColors.primary,
              value: switchValue ?? false,
              onChanged: onChanged,
            )
          : null,

      onTap: (switchValue != null) ? null : () {},
    );
  }
}
