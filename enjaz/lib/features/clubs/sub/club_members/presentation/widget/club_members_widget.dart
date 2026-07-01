import 'package:enjaz/features/clubs/sub/club_members/domain/entities/club_members_entity.dart';
import 'package:enjaz/features/clubs/sub/club_members/presentation/cubit/club_members_cubit.dart';
import 'package:enjaz/features/clubs/sub/delete_member/presentation/pages/delete_member_feature_widget.dart';
import 'package:enjaz/features/profile/presentation/widgets/profile_avatar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class ClubMembersWidget extends StatelessWidget {
  const ClubMembersWidget({
    super.key,
    required this.member,
    required this.clubId,
  });

  final ClubMembersEntity member;
  final String clubId;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ClubMembersCubit>();
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: (cubit.isMember || cubit.user.isAdmin) ? 36 : 0,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: ProfileAvatarWidget(type: member.avatar, size: 40),
              ),
              Gap(12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      member.name,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Gap(6),
                    Text(
                      member.email,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Gap(6),
                    Text(
                      member.role,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        if (cubit.isMember || cubit.user.isAdmin)
          Positioned(
            top: -15,
            left: -15,
            child: IconButton(
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              icon: Icon(Icons.close, size: 18, color: Colors.red),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (dialogContext) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: DeleteMemberFeatureWidget(
                        clubId: clubId,
                        userId: member.id,
                        onDeleted: () {
                          cubit.getClubMembersMethod(clubId);
                        },
                      ),
                    );
                  },
                );
              },
            ),
          ),
      ],
    );
  }
}
