import 'package:enjaz/core/extensions/string_extensions.dart';
import 'package:enjaz/core/extensions/theme_extensions.dart';
import 'package:enjaz/core/utils/navigators.dart';
import 'package:enjaz/core/widgets/loading_widget.dart';
import 'package:enjaz/features/clubs/sub/archived_club_events/presentation/cubit/archived_club_events_state.dart';
import 'package:enjaz/features/events/presentation/widgets/events_date_widget.dart';
import 'package:enjaz/features/sub/event_report/presentation/pages/event_report_feature_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';
import 'package:enjaz/features/clubs/sub/archived_club_events/presentation/cubit/archived_club_events_cubit.dart';

class ArchivedClubEventsFeatureWidget extends StatelessWidget {
  const ArchivedClubEventsFeatureWidget({super.key, required this.clubId});
  final String clubId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ArchivedClubEventsCubit(GetIt.I.get())
            ..getArchivedClubEventsMethod(clubId: clubId),
      child: Builder(
        builder: (context) {
          final _ = context.read<ArchivedClubEventsCubit>();
          return Scaffold(
            appBar: AppBar(
              title: Text("الفعاليات المنتهية"),
              centerTitle: true,
            ),
            body: BlocBuilder<ArchivedClubEventsCubit, ArchivedClubEventsState>(
              builder: (context, state) {
                if (state is ArchivedClubEventsSuccessState) {
                  if (state.events.isNotEmpty) {
                    return ListView.separated(
                      itemBuilder: (context, index) {
                        final event = state.events[index];
                        return Card(
                          child: Padding(
                            padding: EdgeInsets.all(14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: .spaceBetween,
                                  children: [
                                    Text(
                                      event.title,
                                      style: context
                                          .theme
                                          .textTheme
                                          .headlineMedium,
                                    ),
                                    if (!event.hasReport)
                                      IconButton(
                                        onPressed: () {
                                          Navigators.goTo(
                                            context,
                                            EventReportFeatureWidget(
                                              eventId: state.events[index].id,
                                            ),
                                          );
                                        },
                                        icon: Icon(
                                          Icons.upload_file_rounded,
                                          color: Colors.red,
                                        ),
                                      ),
                                    if (event.hasReport)
                                      Icon(
                                        Icons.upload_file_rounded,
                                        color: Colors.green,
                                      ),
                                  ],
                                ),
                                Gap(4),

                                Text(
                                  event.description,
                                  style: context.theme.textTheme.headlineSmall,
                                ),
                                Gap(4),

                                Text(
                                  event.place,
                                  style: context.theme.textTheme.bodyMedium,
                                ),
                                Gap(12),

                                Row(
                                  children: [
                                    EventsDateWidget(
                                      text: event.dateAt
                                          .toString()
                                          .split(" ")[0]
                                          .toDayMonthYear,
                                      icon: Icons.calendar_today_outlined,
                                      textStyle:
                                          context.theme.textTheme.bodyMedium!,
                                    ),

                                    Gap(8),
                                    EventsDateWidget(
                                      text:
                                          "${event.startTime.substring(0, 5)} - ${event.endTime.substring(0, 5)}",
                                      icon: Icons.access_time,
                                      textStyle:
                                          context.theme.textTheme.bodyMedium!,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Gap(8);
                      },
                      itemCount: state.events.length,
                    );
                  }
                  return Center(
                    child: Text(
                      "لا يوجد فعاليات للنادي",
                      style: context.theme.textTheme.titleLarge,
                    ),
                  );
                }
                return LoadingWidget();
              },
            ),
          );
        },
      ),
    );
  }
}
