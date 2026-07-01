import 'package:enjaz/core/extensions/context_extensions.dart';
import 'package:enjaz/core/extensions/theme_extensions.dart';
import 'package:enjaz/features/profile/presentation/widgets/profile_section_title.dart';
import 'package:enjaz/features/profile/sub/activity_history/presentation/cubit/activity_history_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';
import 'package:enjaz/features/profile/sub/activity_history/presentation/cubit/activity_history_cubit.dart';

class ActivityHistoryFeatureWidget extends StatelessWidget {
  const ActivityHistoryFeatureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ActivityHistoryCubit(GetIt.I.get()),
      child: Builder(
        builder: (context) {
          final _ = context.read<ActivityHistoryCubit>();
          return BlocBuilder<ActivityHistoryCubit, ActivityHistoryState>(
            builder: (context, state) {
              if (state is ActivityHistorySuccessState) {
                final events = state.events;

                void openBottomSheet() {
                  context.showBottomSheet(
                    widget: events.isNotEmpty
                        ? SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ProfileSectionTitle(
                                  sectionTitle: "سجل الفعاليات السابقة",
                                ),
                                Gap(8),
                                ListView.separated(
                                  separatorBuilder: (context, index) =>
                                      Divider(),
                                  shrinkWrap: true,
                                  itemCount: events.length,
                                  itemBuilder: (context, index) => ListTile(
                                    leading: Icon(
                                      Icons.event_available,
                                      size: 28,
                                    ),
                                    title: Text(
                                      " ${events[index].title}",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                    trailing: Text(
                                      events[index].dateAt
                                          .toIso8601String()
                                          .split("T")
                                          .first,
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ProfileSectionTitle(
                                sectionTitle: "سجل الفعاليات السابقة",
                              ),
                              Gap(200),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "لا يوجد فعاليات",
                                  style: context.theme.textTheme.titleLarge,
                                ),
                              ),
                            ],
                          ),
                  );
                }

                return ListTile(
                  minTileHeight: 0,
                  contentPadding: EdgeInsets.symmetric(horizontal: 8),
                  title: ProfileSectionTitle(sectionTitle: "الفعاليات السابقة"),
                  onTap: openBottomSheet,
                );
              }
              return SizedBox.shrink();
            },
          );
        },
      ),
    );
  }
}
