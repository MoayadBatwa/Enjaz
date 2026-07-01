import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.sw,
      padding: .all(16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(34, 33, 149, 243),
        borderRadius: BorderRadius.circular(15),
      ),
      child: child,
    );
  }
}
