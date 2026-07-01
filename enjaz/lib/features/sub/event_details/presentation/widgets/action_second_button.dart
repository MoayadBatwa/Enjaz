import 'package:enjaz/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ActionSecondButton extends StatelessWidget {
  const ActionSecondButton({super.key, required this.isCloseBlue});

  final bool isCloseBlue;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: isCloseBlue
          ? ElevatedButton.styleFrom(
              side: BorderSide(width: 1, color: AppColors.primary),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            )
          : ElevatedButton.styleFrom(
              side: BorderSide(width: 1, color: Colors.red),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.red,
            ),
      onPressed: () => Navigator.pop(context),
      child: Text(
        "إغلاق",
        style: isCloseBlue
            ? TextStyle(color: Theme.of(context).colorScheme.onPrimary)
            : TextStyle(color: Colors.red),
      ),
    );
  }
}
