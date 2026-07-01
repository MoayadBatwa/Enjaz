import 'package:enjaz/admin_features/universities/sub/university_details/presentation/widgets/university_info_card.dart';
import 'package:enjaz/core/widgets/loading_widget.dart';
import 'package:enjaz/core/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:enjaz/admin_features/universities/sub/university_details/presentation/cubit/university_details_cubit.dart';
import 'package:enjaz/admin_features/universities/sub/university_details/presentation/cubit/university_details_state.dart';

class UniversityDetailsFeatureWidget extends StatelessWidget {
  const UniversityDetailsFeatureWidget({super.key, required this.universityId});

  final String universityId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return UniversityDetailsCubit(GetIt.I.get())
          ..getUniversityDetailsMethod(universityId);
      },
      child: Scaffold(
        appBar: AppBar(),
        body: BlocBuilder<UniversityDetailsCubit, UniversityDetailsState>(
          builder: (context, state) {
            if (state is UniversityDetailsLoadingState) {
              return LoadingWidget();
            }
            if (state is UniversityDetailsErrorState) {
              return Center(child: Text(state.message));
            }
            if (state is UniversityDetailsSuccessState) {
              final university = state.university;
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                        vertical: 32,
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        color: Theme.of(context).cardColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.05),
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Logo(),
                          SizedBox(height: 12),
                          Text(
                            university.name,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          UniversityInfoCard(
                            title: "الوصف",
                            value: university.description,
                          ),
                          Divider(),
                          UniversityInfoCard(
                            title: "الموقع",
                            value: university.location,
                          ),
                          Divider(),
                          UniversityInfoCard(
                            title: "الفرع",
                            value: university.branch,
                          ),
                          Divider(),
                          UniversityInfoCard(
                            title: "الجنس",
                            value: university.gender,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
            return SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
