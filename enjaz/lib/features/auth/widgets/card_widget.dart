import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(padding: EdgeInsets.all(14), child: child),
    );
  }
}
