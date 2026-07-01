import 'package:flutter/material.dart';

class EventsDateWidget extends StatelessWidget {
  const EventsDateWidget({
    super.key,
    required this.text,
    required this.icon,
    required this.textStyle,
  });

  final String text;
  final IconData icon;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 16, color: Colors.grey),

        const SizedBox(width: 4),
        Text(text, style: textStyle),
      ],
    );
  }
}
