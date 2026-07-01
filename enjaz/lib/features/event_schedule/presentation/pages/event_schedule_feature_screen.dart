import 'package:enjaz/core/constants/app_colors.dart';
import 'package:enjaz/core/widgets/loading_widget.dart';
import 'package:enjaz/features/events/presentation/widgets/event_widget.dart';
import 'package:enjaz/features/event_schedule/presentation/cubit/event_schedule_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/features/event_schedule/presentation/cubit/event_schedule_cubit.dart';
import 'package:gap/gap.dart';
import 'package:table_calendar/table_calendar.dart';

class EventScheduleFeatureScreen extends StatelessWidget {
  const EventScheduleFeatureScreen({super.key, this.clubId});
  final String? clubId;
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<EventScheduleCubit>()
      ..getEventScheduleMethod(clubId: clubId);

    return Scaffold(
      appBar: AppBar(title: const Text('تقويم الفعاليات')),
      body: BlocBuilder<EventScheduleCubit, EventScheduleState>(
        builder: (context, state) {
          if (state is EventScheduleSuccessState) {
            final selectedEvents = cubit.getEventsForDay(
              state.selectedDay,
              state.events,
            );
            return Column(
              children: [
                TableCalendar(
                  firstDay: DateTime(2020),
                  lastDay: DateTime(2030),
                  focusedDay: state.focusedDay,
                  calendarFormat: state.calendarFormat ?? CalendarFormat.month,
                  selectedDayPredicate: (day) {
                    return isSameDay(state.selectedDay, day);
                  },

                  eventLoader: (day) {
                    return state.events
                        .where((e) => isSameDay(e.dateAt, day))
                        .toList();
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    cubit.updateUi(state.events, focusedDay, selectedDay);
                  },
                  calendarBuilders: CalendarBuilders(
                    markerBuilder: (context, date, events) {
                      if (events.isEmpty) return null;

                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          events.length > 3 ? 3 : events.length,
                          (index) => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 1),
                            width: 6,
                            height: 6,
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.onSurface,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  calendarStyle: CalendarStyle(
                    cellAlignment: .center,
                    selectedDecoration: BoxDecoration(
                      color: AppColors.secondary,
                      shape: .circle,
                      boxShadow: kElevationToShadow[1],
                    ),
                    todayDecoration: BoxDecoration(
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                    ),
                  ),
                  locale: 'ar_SA',

                  availableCalendarFormats: const {
                    CalendarFormat.month: 'شهر',
                    CalendarFormat.twoWeeks: 'أسبوعين',
                    CalendarFormat.week: 'أسبوع',
                  },
                  onFormatChanged: (format) {
                    cubit.changeFormat(format);
                  },
                  formatAnimationDuration: const Duration(milliseconds: 300),
                  formatAnimationCurve: Curves.easeInOut,
                ),
                const Gap(20),

                /// Event List
                Expanded(
                  child: selectedEvents.isEmpty
                      ? const Center(child: Text('لا يوجد فعاليات'))
                      : ListView.builder(
                          itemCount: selectedEvents.length,
                          itemBuilder: (context, index) {
                            final event = selectedEvents[index];
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: EventWidget(event: event),
                            );
                          },
                        ),
                ),
              ],
            );
          }
          return Center(child: LoadingWidget());
        },
      ),
    );
  }
}
