import 'package:enjaz/core/common/entities/club_entity/club_entity.dart';
import 'package:enjaz/core/widgets/club_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ClubWidget extends StatelessWidget {
  const ClubWidget({
    super.key,
    required this.clubs,
    this.location,
    this.onDelete,
  });

  final List<ClubEntity> clubs;
  final String? location;
  final Function(String)? onDelete;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 2,
      children: [
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return const Gap(10);
            },
            itemCount: clubs.length,
            itemBuilder: (context, index) {
              final club = clubs[index];
              return ClubCardWidget(
                club: club,
                showJoinButton: location != '/manageClub',
                location: location,
                onDelete: (p0) {
                  onDelete?.call(p0);
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
