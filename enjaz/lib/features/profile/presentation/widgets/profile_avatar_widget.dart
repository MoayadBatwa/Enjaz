import 'package:enjaz/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileAvatarWidget extends StatelessWidget {
  final String type;
  final double size;

  const ProfileAvatarWidget({super.key, required this.type, this.size = 90});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    switch (type) {
      case 'male':
        return ClipOval(
          child: Image.asset(
            'assets/images/male_avatar.jpg',
            width: size,
            height: size,
            fit: BoxFit.cover,
          ),
        );
      case 'female':
        return ClipOval(
          child: Image.asset(
            'assets/images/female_avatar.jpg',
            width: size,
            height: size,
            fit: BoxFit.cover,
          ),
        );
      default:
        return Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isDark ? AppColors.background : AppColors.primary,
          ),
          child: Icon(
            Icons.person_outline,
            size: size * 0.6,
            color: isDark ? AppColors.primary : AppColors.background,
          ),
        );
    }
  }
}
