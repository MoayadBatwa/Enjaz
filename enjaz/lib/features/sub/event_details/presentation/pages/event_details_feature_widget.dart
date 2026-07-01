import 'package:enjaz/core/common/entities/event_details_entity/event_details_entity.dart';
import 'package:enjaz/core/extensions/context_extensions.dart';
import 'package:enjaz/core/extensions/date_time_extension.dart';
import 'package:enjaz/core/extensions/string_extensions.dart';
import 'package:enjaz/core/extensions/theme_extensions.dart';
import 'package:enjaz/features/sub/event_details/presentation/cubit/event_details_state.dart';
import 'package:enjaz/features/sub/event_details/presentation/widgets/action_loading_button.dart';
import 'package:enjaz/features/sub/event_details/presentation/widgets/action_main_button.dart';
import 'package:enjaz/features/sub/event_details/presentation/widgets/action_second_button.dart';
import 'package:enjaz/features/sub/event_details/presentation/widgets/event_details_widget.dart';
import 'package:enjaz/features/sub/event_details/presentation/widgets/event_location_link_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:enjaz/features/sub/event_details/presentation/cubit/event_details_cubit.dart';

class EventDetailsFeatureWidget extends StatelessWidget {
  const EventDetailsFeatureWidget({super.key, required this.event});

  final EventDetailsEntity event;
  @override
  Widget build(BuildContext context) {
    bool isStudentEnrolled = event.isEnrolled;

    return BlocProvider(
      create: (context) => EventDetailsCubit(GetIt.I.get()),
      child: Builder(
        builder: (context) {
          final cubit = context.read<EventDetailsCubit>();
          return BlocListener<EventDetailsCubit, EventDetailsState>(
            listener: (context, state) {
              switch (state) {
                case EventDetailsErrorState _:
                  return context.showSnackBar(state.message, isError: true);
                case EventDetailsSuccessState _:
                  state.isEnrolled
                      ? context.showSnackBar("تم التسجيل في الفعالية")
                      : context.showSnackBar("تم الانسحاب في الفعالية");
                  return Navigator.pop(context);
                default:
              }
            },
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              title: Text(
                event.title,
                style: context.theme.textTheme.displaySmall,
                textAlign: .center,
              ),
              content: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: .start,
                  mainAxisSize: .min,
                  children: [
                    EventDetailsWidget(
                      icon: Icons.info_outline,
                      label: "الوصف",
                      labelValue: event.description ?? "لا يوجد",
                    ),
                    EventLocationLinkWidget(
                      icon: Icons.location_on_outlined,
                      label: "المكان",
                      placeName: event.place,
                      mapUrl: event.mapUrl,
                    ),
                    EventDetailsWidget(
                      icon: Icons.calendar_month_outlined,
                      label: "التاريخ",
                      labelValue: event.dateAt.toDayMonthYear,
                    ),
                    EventDetailsWidget(
                      icon: Icons.access_time,
                      label: "الوقت",
                      labelValue:
                          "${event.startTime.removeSeconds} - ${event.endTime.removeSeconds}",
                    ),
                    EventDetailsWidget(
                      icon: Icons.domain,
                      label: "الجهة",
                      labelValue: "${event.clubName} - ${event.universityName}",
                    ),
                    EventDetailsWidget(
                      icon: Icons.people_outline,
                      label: "السعة الاستيعابية",
                      labelValue: "${event.capacity} شخص",
                    ),
                    EventDetailsWidget(
                      icon: Icons.emoji_people,
                      label: "عدد المسجلين الان:",
                      labelValue: "${event.currentCount} شخص",
                    ),
                  ],
                ),
              ),
              actionsAlignment: MainAxisAlignment.center,
              actions: [
                ActionSecondButton(
                  isCloseBlue:
                      (isStudentEnrolled ||
                      event.status == 'مكتمل' ||
                      event.status == 'منتهية'),
                ),

                BlocBuilder<EventDetailsCubit, EventDetailsState>(
                  builder: (context, state) {
                    switch (state) {
                      case EventDetailsLoadingState _:
                        return ActionLoadingButton(
                          isStudentEnrolled: isStudentEnrolled,
                        );
                      default:
                        return ActionMainButton(
                          isStudentEnrolled: isStudentEnrolled,
                          eventStatus: event.status,
                          isAdmin: cubit.user.isAdmin  || cubit.user.isSupervisor,
                          onPressed: (value) {
                            switch (value) {
                              case "Drop":
                                cubit.dropOutEvent(eventId: event.eventId);
                                break;
                              case "Enroll":
                                cubit.enrollInEvent(eventId: event.eventId);
                                break;
                              default:
                                null;
                            }
                          },
                        );
                    }
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
