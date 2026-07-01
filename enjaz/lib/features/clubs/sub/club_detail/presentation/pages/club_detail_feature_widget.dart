import 'package:enjaz/core/extensions/context_extensions.dart';
import 'package:enjaz/core/extensions/theme_extensions.dart';
import 'package:enjaz/core/navigation/routers.dart';
import 'package:enjaz/core/common/entities/club_entity/club_entity.dart';
import 'package:enjaz/features/clubs/presentation/widgets/container_event_club_widget.dart';
import 'package:enjaz/features/clubs/sub/club_detail/presentation/cubit/club_detail_state.dart';
import 'package:enjaz/features/clubs/sub/club_edit/presentation/pages/club_edit_feature_widget.dart';
import 'package:enjaz/features/clubs/sub/club_members/presentation/cubit/club_members_cubit.dart';
import 'package:enjaz/features/clubs/sub/club_members/presentation/pages/club_members_feature_widget.dart';
import 'package:enjaz/features/clubs/sub/join_club/presentation/pages/join_club_feature_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';
import 'package:enjaz/features/clubs/sub/club_detail/presentation/cubit/club_detail_cubit.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class ClubDetailFeatureWidget extends StatelessWidget {
  const ClubDetailFeatureWidget({super.key, required this.club});
  final ClubEntity club;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ClubDetailCubit(GetIt.I.get())
        ..getClubDetailMethod(clubId: club.id)
        ..isUserMember(club.id),
      child: Builder(
        builder: (context) {
          final cubit = context.read<ClubDetailCubit>();
          bool isEditing = false;
          return Scaffold(
            appBar: AppBar(),
            body: BlocListener<ClubDetailCubit, ClubDetailState>(
              listener: (context, state) {
                if (state is ClubDetailErrorState) {
                  context.showSnackBar(state.message, isError: true);
                }
              },
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: 100.sw,
                      padding: EdgeInsets.symmetric(
                        vertical: 32,
                        horizontal: 16,
                      ),
                      child: Column(
                        spacing: 10,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              club.name,
                              style: Theme.of(context).textTheme.displayMedium,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Text(
                            club.university.name,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BlocBuilder<ClubDetailCubit, ClubDetailState>(
                            builder: (context, state) {
                              if (cubit.isMember || cubit.user.isAdmin) {
                                return Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 2.0,
                                      right: 4.0,
                                    ),
                                    child: IconButton(
                                      padding: EdgeInsets.zero,
                                      constraints: BoxConstraints(),
                                      iconSize: 20,
                                      onPressed: () async {
                                        await cubit.getClubEditMethod(
                                          isEditing: isEditing,
                                        );
                                      },
                                      icon:
                                          (state is ClubEditSuccessState &&
                                              state.editing)
                                          ? Icon(Icons.save)
                                          : Icon(Icons.edit),
                                    ),
                                  ),
                                );
                              } else {
                                return SizedBox.shrink();
                              }
                            },
                          ),
                          BlocBuilder<ClubDetailCubit, ClubDetailState>(
                            builder: (context, state) {
                              if (state is ClubEditSuccessState) {
                                isEditing = state.editing;
                                return Column(
                                  children: [
                                    ClubEditFeatureWidget(
                                      club: club,
                                      isEditing: state.editing,
                                    ),
                                  ],
                                );
                              }
                              return ClubEditFeatureWidget(
                                club: club,
                                isEditing: null,
                              );
                            },
                          ),
                          Gap(10),
                          Divider(),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) {
                                    return BlocProvider(
                                      create: (context) =>
                                          ClubMembersCubit(GetIt.I.get())
                                            ..getClubMembersMethod(club.id),
                                      child: ClubMembersFeatureScreen(
                                        clubId: club.id,
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: ListTile(
                                contentPadding: EdgeInsets.zero,
                                title: Text(
                                  'أعضاء النادي',
                                  style: context.theme.textTheme.headlineMedium,
                                ),
                                trailing: Icon(Icons.arrow_forward, size: 18),
                              ),
                            ),
                          ),
                          BlocBuilder<ClubDetailCubit, ClubDetailState>(
                            builder: (context, state) {
                              if (cubit.isMember || cubit.user.isAdmin) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Divider(),

                                    InkWell(
                                      onTap: () {
                                        context.push(
                                          Routes.eventManagement,
                                          extra: club.id,
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 8,
                                        ),
                                        child: ListTile(
                                          contentPadding: EdgeInsets.zero,
                                          title: Text(
                                            'إدارة الفعاليات',
                                            style: context
                                                .theme
                                                .textTheme
                                                .headlineMedium,
                                          ),
                                          trailing: Icon(
                                            Icons.arrow_forward,
                                            size: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              } else {
                                return SizedBox.shrink();
                              }
                            },
                          ),

                          BlocBuilder<ClubDetailCubit, ClubDetailState>(
                            buildWhen: (previous, current) {
                              if (current is ClubEditFeatureWidget) {
                                return false;
                              }
                              if (current is ClubDetailSuccessState) {
                                return true;
                              }
                              return false;
                            },
                            builder: (context, state) {
                              if (state is ClubDetailSuccessState) {
                                if (state.events.isNotEmpty) {
                                  final size = MediaQuery.of(context).size;
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Gap(12),
                                      Divider(),
                                      Gap(8),
                                      Text(
                                        'فعاليات النادي',
                                        style: context
                                            .theme
                                            .textTheme
                                            .headlineMedium,
                                      ),
                                      Gap(16),
                                      SizedBox(
                                        height:
                                            size.height *
                                            (size.width > size.height
                                                ? 0.50
                                                : 0.25),
                                        child: ListView.builder(
                                          itemCount: state.events.length,
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (context, index) {
                                            return ContainerEventClubWidget(
                                              event: state.events[index],
                                            );
                                          },
                                        ),
                                      ),
                                      Gap(8),
                                    ],
                                  );
                                }
                              }
                              return SizedBox.shrink();
                            },
                          ),
                          Gap(20),
                          if (!cubit.user.isAdmin)
                            Column(
                              children: [
                                Divider(),
                                Gap(8),
                                Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: JoinClubFeatureWidget(
                                      clubId: club.id,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
