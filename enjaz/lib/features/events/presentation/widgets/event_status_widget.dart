import 'package:flutter/material.dart';

class EventStatusWidget extends StatelessWidget {
  const EventStatusWidget({
    super.key,
    required this.label,
    required this.color,
  });

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 2, right: 2),
      height: 30,
      width: 90,
      decoration: BoxDecoration(
        shape: .rectangle,
        borderRadius: .circular(30),
        color: color,
      ),
      child: Center(
        child: Text(label, style: TextStyle(color: Colors.black)),
      ),
    );
  }
}
