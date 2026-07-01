import 'package:flutter/material.dart';
import 'package:enjaz/core/extensions/theme_extensions.dart';

class EventManagementTile extends StatelessWidget {
  const EventManagementTile({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(title, style: context.theme.textTheme.headlineMedium),
              trailing: Icon(Icons.arrow_forward, size: 18),
            ),
          ),
        ),
        Divider(),
      ],
    );
  }
}
