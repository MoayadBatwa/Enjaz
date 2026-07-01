import 'package:flutter/material.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({
    super.key,
    required this.hintText,
    required this.onTap,
    this.trailing,
  });

  final String hintText;
  final VoidCallback onTap;
  final Widget? trailing;

  static Color backgroundColor = Color(0xFFF5F5F5);
  static Color borderColor = Color(0xFFE0E0E0);
  static Color textColor = Color(0xFF757575);
  static Color iconColor = Color(0xFF9E9E9E);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: onTap,
              child: Container(
                height: 48,
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: borderColor),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search, color: iconColor),
                    SizedBox(width: 8),
                    Text(
                      hintText,
                      style: TextStyle(color: textColor, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),

          if (trailing != null) ...[SizedBox(width: 8), trailing!],
        ],
      ),
    );
  }
}
