import 'package:enjaz/core/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';
import 'package:enjaz/features/clubs/sub/club_join_requests/presentation/cubit/club_join_requests_cubit.dart';
import 'package:enjaz/features/clubs/sub/club_join_requests/presentation/cubit/club_join_requests_state.dart';

class ClubJoinRequestsFeatureWidget extends StatelessWidget {
  const ClubJoinRequestsFeatureWidget({super.key, required this.clubId});

  final String clubId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ClubJoinRequestsCubit(GetIt.I.get())
            ..getClubJoinRequestsMethod(clubId),
      child: Scaffold(
        appBar: AppBar(title: Text("طلبات الانضمام")),
        body: BlocBuilder<ClubJoinRequestsCubit, ClubJoinRequestsState>(
          builder: (context, state) {
            if (state is ClubJoinRequestsLoadingState) {
              return LoadingWidget();
            }

            if (state is ClubJoinRequestsEmptyState) {
              return Center(
                child: Text(
                  "لا يوجد طلبات انضمام حالياً",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              );
            }

            if (state is ClubJoinRequestsSuccessState) {
              return ListView.separated(
                padding: EdgeInsets.all(8),
                itemCount: state.requests.length,
                separatorBuilder: (context, index) {
                  return Gap(12);
                },
                itemBuilder: (context, index) {
                  final request = state.requests[index];

                  return Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  request.name,
                                  style: Theme.of(
                                    context,
                                  ).textTheme.titleMedium,
                                ),
                                Gap(6),
                                Text(
                                  request.email,
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {
                                  context.read<ClubJoinRequestsCubit>().accept(
                                    clubId: request.clubId,
                                    userId: request.userId,
                                    role: "student",
                                  );
                                },
                                icon: Icon(Icons.check, color: Colors.green),
                              ),
                              IconButton(
                                onPressed: () {
                                  context.read<ClubJoinRequestsCubit>().reject(
                                    request.id,
                                  );
                                },
                                icon: Icon(Icons.close, color: Colors.red),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }

            return SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
