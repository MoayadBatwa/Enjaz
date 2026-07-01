import 'package:enjaz/features/clubs/sub/archived_club_events/presentation/pages/archived_club_events_feature_widget.dart';
import 'package:enjaz/features/clubs/sub/club_detail/presentation/widgets/event_management_tile.dart';
import 'package:enjaz/features/clubs/sub/club_events/presentation/pages/club_events_feature_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:enjaz/core/navigation/routers.dart';
import 'package:enjaz/core/utils/navigators.dart';

class EventManagementPage extends StatelessWidget {
  const EventManagementPage({super.key, required this.clubId});

  final String clubId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('إدارة الفعاليات'), centerTitle: true),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              EventManagementTile(
                title: 'تقويم فعاليات النادي',
                onTap: () {
                  context.push(Routes.eventSchedule, extra: clubId);
                },
              ),

              EventManagementTile(
                title: 'عرض وإضافة وتعديل فعالية',
                onTap: () {
                  Navigators.goTo(
                    context,
                    ClubEventsFeatureWidget(clubId: clubId),
                  );
                },
              ),

              EventManagementTile(
                title: 'الفعاليات المنتهية',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          ArchivedClubEventsFeatureWidget(clubId: clubId),
                    ),
                  );
                },
              ),

              EventManagementTile(
                title: 'عرض وتحميل تقارير الفعاليات المنتهية',
                onTap: () {
                  context.push(Routes.viewReport, extra: clubId);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
