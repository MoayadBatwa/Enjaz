import 'package:enjaz/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';

class EmptyListWidget extends StatelessWidget {
  const EmptyListWidget({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(message, style: context.theme.textTheme.displaySmall));
  }
}