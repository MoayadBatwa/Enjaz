import 'package:enjaz/core/extensions/context_extensions.dart';
import 'package:enjaz/core/widgets/loading_widget.dart';
import 'package:enjaz/features/clubs/sub/club_events/presentation/cubit/club_events_state.dart';
import 'package:enjaz/features/clubs/sub/club_events/presentation/widget/club_events_widget.dart';
import 'package:enjaz/features/clubs/sub/club_events/sub/create_event/presentation/pages/create_event_feature_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';
import 'package:enjaz/features/clubs/sub/club_events/presentation/cubit/club_events_cubit.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ClubEventsFeatureWidget extends HookWidget {
  final String clubId;
  const ClubEventsFeatureWidget({super.key, required this.clubId});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ClubEventsCubit(GetIt.I.get())..getClubEventsMethod(clubId: clubId),
      child: Builder(
        builder: (context) {
          final cubit = context.read<ClubEventsCubit>();
          return Scaffold(
            appBar: AppBar(title: Text("فعاليات النادي"), centerTitle: true),
            body: BlocListener<ClubEventsCubit, ClubEventsState>(
              listener: (context, state) {
                switch (state) {
                  case ClubEventsErrorState _:
                    context.showSnackBar(state.message, isError: true);
                    break;
                  default:
                }
              },
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        BlocBuilder<ClubEventsCubit, ClubEventsState>(
                          builder: (context, state) {
                            switch (state) {
                              case ClubEventsLoadingState _:
                                return LoadingWidget();
                              case ClubEventsSuccessState _:
                                final planId = (state.planId != null)
                                    ? state.planId
                                    : state.clubEvents[0].planId;
                                return Column(
                                  children: [
                                    ListView.separated(
                                      shrinkWrap: true,
                                      primary: false,
                                      separatorBuilder: (context, index) =>
                                          Gap(16),
                                      itemCount: state.clubEvents.length,
                                      itemBuilder: (context, index) {
                                        final event = state.clubEvents[index];
                                        return ClubEventsWidget(
                                          event: event,
                                          isUpdated: (value) async {
                                            if (value == true) {
                                              await cubit.getClubEventsMethod(
                                                clubId: clubId,
                                              );
                                            }
                                          },
                                        );
                                      },
                                    ),

                                    if (state.clubEvents.isEmpty)
                                      Center(
                                        child: Text(
                                          "لا توجد فعاليات مجدولة لهذا النادي",
                                        ),
                                      ),

                                    Gap(16),

                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                CreateEventFeatureWidget(
                                                  planId: planId!,
                                                ),
                                          ),
                                        ).then((value) async {
                                          if (value == true) {
                                            await cubit.getClubEventsMethod(
                                              clubId: clubId,
                                            );
                                          }
                                        });
                                      },
                                      child: Text("إنشاء فعالية جديدة"),
                                    ),
                                  ],
                                );
                              default:
                                return SizedBox.shrink();
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
