import 'package:enjaz/core/extensions/date_time_extension.dart';
import 'package:enjaz/core/extensions/string_extensions.dart';
import 'package:enjaz/core/extensions/theme_extensions.dart';
import 'package:enjaz/features/auth/widgets/card_widget.dart';
import 'package:enjaz/features/clubs/sub/club_events/domain/entities/manage_event_entity.dart';
import 'package:enjaz/features/clubs/sub/club_events/sub/update_event/presentation/pages/update_event_feature_widget.dart';
import 'package:enjaz/features/events/presentation/widgets/event_status_widget.dart';
import 'package:enjaz/features/events/presentation/widgets/events_date_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ClubEventsWidget extends StatelessWidget {
  const ClubEventsWidget({super.key, required this.event, this.isUpdated});

  final ManageEventEntity event;
  final Function(bool)? isUpdated;

  @override
  Widget build(BuildContext context) {
    return CardWidget(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UpdateEventFeatureWidget(event: event),
            ),
          ).then((value) async {
            if (value == true) {
              isUpdated!(true);
            }
          });
        },

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Flexible(
                  fit: FlexFit.loose,
                  child: Text(
                    event.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: context.theme.textTheme.headlineMedium,
                  ),
                ),
                Gap(8),
                event.isOpen!
                    ? EventStatusWidget(
                        label: event.status!,
                        color: (event.status == 'متاح')
                            ? const Color.fromARGB(255, 147, 242, 196)
                            : (event.status == 'مكتمل')
                            ? const Color.fromARGB(255, 255, 130, 130)
                            : const Color.fromARGB(255, 236, 236, 122),
                      )
                    : EventStatusWidget(
                        label: "التسجيل مغلق",
                        color: const Color.fromARGB(255, 255, 130, 130),
                      ),
              ],
            ),

            Gap(4),

            Text(event.description, style: context.theme.textTheme.titleSmall),
            Gap(4),

            Text(event.place, style: context.theme.textTheme.headlineSmall),
            Gap(12),

            Row(
              children: [
                EventsDateWidget(
                  text: event.dateAt.toDayMonthYear,
                  icon: Icons.calendar_today_outlined,
                  textStyle: context.theme.textTheme.bodyMedium!,
                ),

                Gap(8),

                EventsDateWidget(
                  text:
                      "${event.startTime.removeSeconds} - ${event.endTime.removeSeconds}",
                  icon: Icons.access_time,
                  textStyle: context.theme.textTheme.bodyMedium!,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
