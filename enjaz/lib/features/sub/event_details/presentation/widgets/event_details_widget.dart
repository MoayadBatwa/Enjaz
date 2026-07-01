import 'package:enjaz/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EventDetailsWidget extends StatelessWidget {
  const EventDetailsWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.labelValue,
  });

  final IconData icon;
  final String label;
  final String labelValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 20),
          Gap(10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label, style: context.theme.textTheme.titleLarge),
                Text(labelValue, style: context.theme.textTheme.titleSmall),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
