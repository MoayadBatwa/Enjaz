import 'package:enjaz/core/common/entities/club_entity/club_entity.dart';
import 'package:enjaz/core/services/user_service.dart';
import 'package:enjaz/core/utils/navigators.dart';
import 'package:enjaz/core/widgets/logo.dart';
import 'package:enjaz/features/clubs/sub/club_detail/presentation/pages/club_detail_feature_widget.dart';
import 'package:enjaz/features/clubs/sub/join_club/presentation/pages/join_club_feature_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';

class ClubCardWidget extends StatelessWidget {
  const ClubCardWidget({
    super.key,
    this.club,
    this.title,
    this.universityName,
    this.showJoinButton = false,
    this.location,
    this.onDelete,
  });

  final ClubEntity? club;
  final String? title;
  final String? universityName;
  final bool showJoinButton;
  final String? location;
  final Function(String)? onDelete;

  @override
  Widget build(BuildContext context) {
    final displayTitle = club?.name ?? title ?? '';
    final displayUniversity = club?.university.name ?? universityName ?? '';
    final user = GetIt.I<UserService>();

    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: club != null
            ? () =>
                  Navigators.goTo(context, ClubDetailFeatureWidget(club: club!))
            : null,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 6.0),
              child: Text(
                displayTitle,
                maxLines: 1,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            subtitle: Text(
              displayUniversity,
              maxLines: 1,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            trailing: location == '/manageClub'
                ? IconButton(
                    icon: const Icon(Icons.close, size: 18, color: Colors.red),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (dialogContext) {
                          return Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Text(
                                    "هل أنت متأكد من حذف النادي",
                                    textAlign: TextAlign.center,
                                  ),
                                  const Gap(10),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          side: BorderSide(
                                            width: 1,
                                            color: Colors.red,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                          backgroundColor: Colors.white,
                                          surfaceTintColor: Colors.red,
                                        ),
                                        onPressed: () {
                                          if (onDelete != null &&
                                              club != null) {
                                            onDelete!(club!.id);
                                          }
                                          Navigator.pop(dialogContext);
                                        },
                                        child: const Text(
                                          "حذف",
                                          style: TextStyle(color: Colors.red),
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(dialogContext);
                                        },
                                        child: const Text("إلغاء"),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  )
                : (showJoinButton && club != null && !user.isAdmin
                      ? JoinClubFeatureWidget(clubId: club!.id)
                      : null),
          ),
        ),
      ),
    );
  }
}
