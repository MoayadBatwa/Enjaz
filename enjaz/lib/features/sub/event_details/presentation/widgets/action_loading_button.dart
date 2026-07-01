import 'package:enjaz/core/constants/app_colors.dart';
import 'package:enjaz/core/widgets/loading_widget.dart';
import 'package:flutter/material.dart';

class ActionLoadingButton extends StatelessWidget {
  const ActionLoadingButton({super.key, required this.isStudentEnrolled});

  final bool isStudentEnrolled;

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: true,
      child: ElevatedButton(
        style: isStudentEnrolled
            ? ElevatedButton.styleFrom(
                fixedSize: Size.fromRadius(22),
                side: BorderSide(width: 2, color: Colors.red),
                shape: RoundedRectangleBorder(borderRadius: .circular(10)),
                backgroundColor: Colors.white,
                surfaceTintColor: Colors.red,
              )
            : ElevatedButton.styleFrom(fixedSize: Size.fromRadius(22)),

        onPressed: () {},
        child: LoadingWidget(
          size: 20,
          color: isStudentEnrolled ? Colors.red : AppColors.surface,
        ),
      ),
    );
  }
}
