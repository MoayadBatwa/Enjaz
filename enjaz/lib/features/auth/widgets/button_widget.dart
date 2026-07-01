import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, this.onPressed, required this.title});
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: .center,
      child: SizedBox(
        width: 85.w,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
          ),
        ),
      ),
    );
  }
}
