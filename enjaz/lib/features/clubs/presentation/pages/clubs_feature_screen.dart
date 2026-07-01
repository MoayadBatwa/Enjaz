import 'package:enjaz/core/extensions/context_extensions.dart';
import 'package:enjaz/core/utils/navigators.dart';
import 'package:enjaz/core/widgets/app_search_bar.dart';
import 'package:enjaz/core/widgets/loading_widget.dart';
import 'package:enjaz/features/clubs/presentation/cubit/clubs_state.dart';
import 'package:enjaz/features/clubs/presentation/widgets/club_widget.dart';
import 'package:enjaz/features/sub/filter/presentation/pages/filter_feature_widget.dart';
import 'package:enjaz/features/sub/search/presentation/pages/search_feature_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/features/clubs/presentation/cubit/clubs_cubit.dart';
import 'package:gap/gap.dart';

class ClubsFeatureScreen extends StatelessWidget {
  const ClubsFeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ClubCubit>();

    return Scaffold(
      appBar: AppBar(),

      body: BlocListener<ClubCubit, ClubsState>(
        listener: (context, state) {
          context.hideLoading();
          if (state is ClubsErrorState) {
            context.showSnackBar(state.message, isError: true);
          }
         
        },
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppSearchBar(
                  hintText: "البحث عن نادي...",
                  onTap: () {
                    Navigators.goTo(
                      context,
                      SearchFeatureWidget(category: .clubs),
                    );
                  },
                  trailing: Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Center(
                      child: FilterFeatureWidget(
                        universityId: (search) {
                          cubit.getClubsFilterMethod(search: search);
                        },
                        category: .clubs,
                      ),
                    ),
                  ),
                ),

                Gap(16),

                Expanded(
                  child: BlocBuilder<ClubCubit, ClubsState>(
                    builder: (context, state) {
                      if (state is ClubsSuccessState) {
                        return ClubWidget(clubs: state.clubs);
                      }

                      if (state is ClubsFilterSuccessState) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Container(
                                padding: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  border: Border.all(),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(state.clubs[0].university.name),
                                    IconButton(
                                      onPressed: () {
                                        cubit.getClubsMethod();
                                      },
                                      icon: Icon(Icons.cancel),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Gap(8),
                            Expanded(child: ClubWidget(clubs: state.clubs)),
                          ],
                        );
                      }

                      return LoadingWidget();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
