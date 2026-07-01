import 'package:enjaz/core/widgets/loading_widget.dart';
import 'package:enjaz/features/clubs/sub/club_join_requests/presentation/pages/club_join_requests_feature_widget.dart';
import 'package:enjaz/features/clubs/sub/club_members/presentation/cubit/club_members_cubit.dart';
import 'package:enjaz/features/clubs/sub/club_members/presentation/cubit/club_members_state.dart';
import 'package:enjaz/features/clubs/sub/club_members/presentation/widget/club_members_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';

class ClubMembersFeatureScreen extends StatelessWidget {
  const ClubMembersFeatureScreen({super.key, required this.clubId});
  final String clubId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        final cubit = ClubMembersCubit(GetIt.I.get());
        cubit.getClubMembersMethod(clubId);
        cubit.isUserMember(clubId);
        return cubit;
      },
      child: BlocBuilder<ClubMembersCubit, ClubMembersState>(
        builder: (context, state) {
          final cubit = context.read<ClubMembersCubit>();
          return Scaffold(
            appBar: AppBar(
              title: Text("أعضاء النادي"),
              actions: [
                if (cubit.isMember || cubit.user.isAdmin)
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                              ClubJoinRequestsFeatureWidget(clubId: clubId),
                        ),
                      );
                    },
                    icon: Icon(Icons.mark_email_unread_outlined),
                  )
                else
                  SizedBox.shrink(),
              ],
            ),

            body: BlocBuilder<ClubMembersCubit, ClubMembersState>(
              builder: (context, state) {
                if (state is ClubMembersLoadingState) {
                  return LoadingWidget();
                }

                if (state is ClubMembersEmptyState) {
                  return Center(child: Text("لا يوجد أعضاء"));
                }

                if (state is ClubMembersSuccessState) {
                  return RefreshIndicator(
                    onRefresh: () async {
                      await context
                          .read<ClubMembersCubit>()
                          .getClubMembersMethod(clubId);
                    },
                    child: ListView.separated(
                      padding: EdgeInsets.all(12),

                      separatorBuilder: (context, index) {
                        return Gap(12);
                      },

                      itemCount: state.members.length,

                      itemBuilder: (context, index) {
                        final member = state.members[index];

                        return Card(
                          margin: EdgeInsets.zero,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 18,
                              vertical: 18,
                            ),
                            child: ClubMembersWidget(
                              member: member,
                              clubId: clubId,
                            ),
                          ),
                        );
                      },
                    ),
                  );
                }

                if (state is ClubMembersErrorState) {
                  return Center(child: Text(state.message));
                }

                return SizedBox.shrink();
              },
            ),
          );
        },
      ),
    );
  }
}
