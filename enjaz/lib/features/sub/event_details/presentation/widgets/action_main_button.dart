import 'package:flutter/material.dart';

class ActionMainButton extends StatelessWidget {
  const ActionMainButton({
    super.key,
    required this.isStudentEnrolled,
    required this.eventStatus,
    required this.isAdmin,
    this.onPressed,
  });

  final bool isStudentEnrolled;
  final String eventStatus;
  final bool isAdmin;
  final Function(String)? onPressed;

  @override
  Widget build(BuildContext context) {
    if (isAdmin) return SizedBox.shrink();
    return ElevatedButton(
      style: isStudentEnrolled
          ? ElevatedButton.styleFrom(
              side: BorderSide(width: 1, color: Colors.red),
              shape: RoundedRectangleBorder(borderRadius: .circular(10)),
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.red,
            )
          : (eventStatus == 'مكتمل' || eventStatus == 'منتهية')
          ? ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 177, 52, 43),
            )
          : null,
      onPressed: isStudentEnrolled
          ? () => onPressed!("Drop")
          : (eventStatus == 'مكتمل' || eventStatus == 'منتهية')
          ? () => onPressed!("")
          : () => onPressed!("Enroll"),
      child: isStudentEnrolled
          ? Text("إنسحاب", style: TextStyle(color: Colors.red))
          : eventStatus == 'مكتمل'
          ? Text("مكتملة")
          : eventStatus == 'منتهية'
          ? Text("منتهية")
          : Text("تسجيل الآن"),
    );
  }
}
