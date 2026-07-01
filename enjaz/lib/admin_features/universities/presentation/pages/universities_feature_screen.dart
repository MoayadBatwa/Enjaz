import 'package:enjaz/admin_features/universities/presentation/widgets/universities_card_widget.dart';
import 'package:enjaz/admin_features/universities/sub/add_university/presentation/cubit/add_university_cubit.dart';
import 'package:enjaz/admin_features/universities/sub/add_university/presentation/pages/add_university_feature_widget.dart';
import 'package:enjaz/core/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:enjaz/admin_features/universities/presentation/cubit/universities_cubit.dart';
import 'package:enjaz/admin_features/universities/presentation/cubit/universities_state.dart';

class UniversitiesFeatureScreen extends StatelessWidget {
  const UniversitiesFeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return UniversitiesCubit(GetIt.I.get())..getUniversitiesMethod();
      },

      child: Scaffold(
        appBar: AppBar(title: Text('الجامعات')),

        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BlocProvider(
                      create: (_) => AddUniversityCubit(GetIt.I.get()),
                      child: AddUniversityFeatureWidget(),
                    ),
                  ),
                );

                if (result == true && context.mounted) {
                  context.read<UniversitiesCubit>().getUniversitiesMethod();
                }
              },
              child: Icon(Icons.add),
            );
          },
        ),

        body: BlocBuilder<UniversitiesCubit, UniversitiesState>(
          builder: (context, state) {
            if (state is UniversitiesLoadingState) {
              return LoadingWidget();
            }

            if (state is UniversitiesErrorState) {
              return Center(child: Text(state.message));
            }

            if (state is UniversitiesSuccessState) {
              return ListView.builder(
                itemCount: state.universities.length,

                itemBuilder: (context, index) {
                  return UniversityCardWidget(
                    university: state.universities[index],
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
