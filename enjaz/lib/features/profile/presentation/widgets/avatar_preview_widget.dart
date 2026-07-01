import 'package:flutter/material.dart';

class AvatarPreviewWidget extends StatelessWidget {
  final String type;

  const AvatarPreviewWidget({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case 'male':
        return Image.asset('assets/images/male_avatar.jpg', fit: BoxFit.cover);
      case 'female':
        return Image.asset(
          'assets/images/female_avatar.jpg',
          fit: BoxFit.cover,
        );
      default:
        return const Icon(Icons.person_outline);
    }
  }
}
