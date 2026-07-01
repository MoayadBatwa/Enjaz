import 'package:enjaz/core/widgets/club_card_widget.dart';
import 'package:enjaz/core/widgets/loading_widget.dart';

import 'package:enjaz/features/clubs/sub/club_detail/presentation/pages/club_detail_feature_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:enjaz/features/student_clubs/presentation/cubit/student_clubs_cubit.dart';
import 'package:enjaz/features/student_clubs/presentation/cubit/student_clubs_state.dart';

import 'package:gap/gap.dart';

class StudentClubsFeatureScreen extends StatelessWidget {
  const StudentClubsFeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<StudentClubsCubit>();
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<StudentClubsCubit, StudentClubsState>(
        builder: (context, state) {
          if (state is StudentClubsLoadingState) {
            return LoadingWidget();
          }

          if (state is StudentClubsEmptyState) {
            return RefreshIndicator(
              onRefresh: () async {
                await cubit.getStudentClubsMethod();
              },
              child: ListView(
                children: [
                  SizedBox(height: 300),
                  Center(child: Text("لا يوجد أندية منضمة")),
                ],
              ),
            );
          }

          if (state is StudentClubsSuccessState) {
            return RefreshIndicator(
              onRefresh: () async {
                await cubit.getStudentClubsMethod();
              },

              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 8),

                itemCount: state.clubs.length,

                separatorBuilder: (context, index) {
                  return Gap(10);
                },

                itemBuilder: (context, index) {
                  final club = state.clubs[index];

                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ClubDetailFeatureWidget(club: club);
                          },
                        ),
                      );
                    },

                    child: ClubCardWidget(
                      title: club.name,
                      universityName: club.university.name,
                    ),
                  );
                },
              ),
            );
          }

          if (state is StudentClubsErrorState) {
            return Center(child: Text(state.message));
          }

          return SizedBox.shrink();
        },
      ),
    );
  }
}
