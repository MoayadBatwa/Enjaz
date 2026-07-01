import 'package:enjaz/core/common/entities/event_details_entity/event_details_entity.dart';
import 'package:enjaz/core/extensions/theme_extensions.dart';
import 'package:enjaz/features/sub/event_details/presentation/pages/event_details_feature_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ContainerEventClubWidget extends StatelessWidget {
  const ContainerEventClubWidget({super.key, required this.event});

  final EventDetailsEntity event;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    event.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  Gap(14),

                  Row(
                    children: [
                      Icon(Icons.date_range, size: 18),
                      Gap(8),
                      Text(
                        event.dateAt.toIso8601String().split('T').first,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),

                  Gap(10),

                  Row(
                    children: [
                      Icon(Icons.access_time, size: 18),
                      Gap(8),
                      Text(
                        '${event.startTime.substring(0, 5)} - ${event.endTime.substring(0, 5)}',
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),

                  Gap(40),
                ],
              ),

              Positioned(
                bottom: 0,
                left: 0,
                child: TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return EventDetailsFeatureWidget(event: event);
                      },
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "التفاصيل",
                        style: context.theme.textTheme.bodySmall,
                      ),
                      Gap(4),
                      Icon(
                        Icons.arrow_forward,
                        color: Theme.of(context).iconTheme.color,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
