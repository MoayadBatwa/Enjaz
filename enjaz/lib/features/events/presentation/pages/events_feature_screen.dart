import 'package:enjaz/core/extensions/context_extensions.dart';
import 'package:enjaz/core/utils/navigators.dart';
import 'package:enjaz/core/widgets/loading_widget.dart';
import 'package:enjaz/core/widgets/app_search_bar.dart';
import 'package:enjaz/features/events/presentation/cubit/events_state.dart';
import 'package:enjaz/features/events/presentation/widgets/empty_list_widget.dart';
import 'package:enjaz/features/events/presentation/widgets/event_widget.dart';
import 'package:enjaz/features/sub/search/presentation/pages/search_feature_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/features/events/presentation/cubit/events_cubit.dart';
import 'package:gap/gap.dart';

class EventsFeatureScreen extends StatelessWidget {
  const EventsFeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<EventsCubit>();
    final isAdmin = cubit.userRole.isAdmin || cubit.userRole.isSupervisor;
    return DefaultTabController(
      length: isAdmin ? 1 : 2,
      child: Scaffold(
        appBar: AppBar(),

        body: BlocListener<EventsCubit, EventsState>(
          listener: (context, state) {
            if (state is EventsErrorState) {
              context.showSnackBar(state.message, isError: true);
            }
          },
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 12, right: 12, left: 12),
                child: AppSearchBar(
                  hintText: "البحث عن فعالية...",
                  onTap: () {
                    Navigators.goTo(
                      context,
                      SearchFeatureWidget(category: .events),
                    );
                  },
                ),
              ),
              TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.event_note_sharp),
                    text: "الفعاليات المتاحة",
                  ),
                  if (!isAdmin)
                    Tab(
                      icon: Icon(Icons.event_available),
                      text: "الفعاليات المسجلة",
                    ),
                ],
              ),

              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: BlocBuilder<EventsCubit, EventsState>(
                    builder: (context, state) {
                      if (state is EventsLoadingState) {
                        return LoadingWidget();
                      }

                      if (state is EventsSuccessState) {
                        final browseEvents = state.browseEvents;
                        final joinedEvents = state.joinedEvents;

                        return TabBarView(
                          children: [
                            browseEvents.isEmpty
                                ? EmptyListWidget(
                                    message: "لا يوجد فعاليات متاحة",
                                  )
                                : ListView.separated(
                                    separatorBuilder: (context, index) =>
                                        Gap(16),
                                    shrinkWrap: true,
                                    itemCount: browseEvents.length,
                                    itemBuilder: (context, index) {
                                      return EventWidget(
                                        event: browseEvents[index],
                                      );
                                    },
                                  ),
                            if (!isAdmin)
                              joinedEvents.isEmpty
                                  ? EmptyListWidget(
                                      message: "لا يوجد فعاليات مسجلة",
                                    )
                                  : ListView.separated(
                                      separatorBuilder: (context, index) =>
                                          Gap(16),
                                      shrinkWrap: true,
                                      itemCount: joinedEvents.length,
                                      itemBuilder: (context, index) {
                                        return EventWidget(
                                          event: joinedEvents[index],
                                        );
                                      },
                                    ),
                          ],
                        );
                      }

                      return SizedBox.shrink();
                    },
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
