import 'package:enjaz/core/common/entities/club_entity/club_entity.dart';
import 'package:enjaz/core/utils/navigators.dart';
import 'package:enjaz/features/clubs/sub/club_detail/presentation/pages/club_detail_feature_widget.dart';
import 'package:enjaz/features/clubs/sub/join_club/presentation/pages/join_club_feature_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ClubCardWidget extends StatelessWidget {
  const ClubCardWidget({
    super.key,
    required this.club,
    this.location,
    this.onDelete,
  });
  final ClubEntity club;
  final String? location;
  final Function(String)? onDelete;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigators.goTo(context, ClubDetailFeatureWidget(club: club));
      },
      child: Container(
        height: size.height * (size.width > size.height ? 0.20 : 0.13),
        decoration: BoxDecoration(
          borderRadius: .circular(16),
          border: Border.all(width: 2),
        ),
        child: Center(
          child: ListTile(
            trailing: location == '/manageClub'
                ? IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (dialogContext) {
                          return Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(16),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "هل أنت متأكد من حذف النادي",
                                    textAlign: TextAlign.center,
                                  ),
                                  Gap(10),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.red,
                                        ),
                                        onPressed: () {
                                          onDelete!(club.id);
                                          Navigator.pop(dialogContext);
                                        },
                                        child: Text("حذف"),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(dialogContext);
                                        },
                                        child: Text("إلغاء"),
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
                    icon: Icon(Icons.cancel),
                  )
                : JoinClubFeatureWidget(clubId: club.id),
            title: Text(
              club.name,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            subtitle: Text(
              club.university.name,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ),
      ),
    );
  }
}
