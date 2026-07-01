import 'package:enjaz/core/common/entities/event_details_entity/event_details_entity.dart';
import 'package:enjaz/core/extensions/date_time_extension.dart';
import 'package:enjaz/core/extensions/string_extensions.dart';
import 'package:enjaz/core/extensions/theme_extensions.dart';
import 'package:enjaz/features/events/presentation/widgets/event_status_widget.dart';
import 'package:enjaz/features/events/presentation/widgets/events_date_widget.dart';
import 'package:enjaz/features/sub/event_details/presentation/pages/event_details_feature_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EventWidget extends StatelessWidget {
  const EventWidget({super.key, required this.event});

  final EventDetailsEntity event;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(14),
        child: InkWell(
          onTap: () => showDialog(
            context: context,
            builder: (context) => EventDetailsFeatureWidget(event: event),
          ),
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
                  event.isEnrolled
                      ? EventStatusWidget(
                          label: "مسجل",
                          color: const Color.fromARGB(255, 255, 195, 130),
                        )
                      : event.isOpen
                      ? EventStatusWidget(
                          label: event.status,
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

              Text(
                event.description ?? "لا يوجد",
                style: context.theme.textTheme.titleSmall,
              ),
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
      ),
    );
  }
}
