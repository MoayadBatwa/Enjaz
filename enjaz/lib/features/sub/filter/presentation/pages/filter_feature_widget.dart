import 'package:enjaz/core/constants/app_colors.dart';
import 'package:enjaz/core/constants/app_enums.dart';
import 'package:enjaz/core/extensions/context_extensions.dart';
import 'package:enjaz/features/auth/signup/presentation/widgets/dropdown_signup_widget.dart';
import 'package:enjaz/features/sub/filter/presentation/cubit/filter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:enjaz/features/sub/filter/presentation/cubit/filter_cubit.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class FilterFeatureWidget extends StatelessWidget {
  const FilterFeatureWidget({
    super.key,
    required this.universityId,
    required this.category,
  });
  final Function(String)? universityId;
  final FilterCategoryEnum category;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FilterCubit(GetIt.I.get()),
      child: Builder(
        builder: (context) {
          final cubit = context.read<FilterCubit>();
          return BlocListener<FilterCubit, FilterState>(
            listener: (context, state) {
              context.hideLoading();
              if (state is UniversitiesSuccessState) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      child: Container(
                        height: 50.sh,
                        padding: .all(16),
                        decoration: BoxDecoration(borderRadius: .circular(16)),
                        child: Column(
                          spacing: 20,
                          children: [
                            Text(
                              "تصفية",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            DropdownSignupWidget(
                              items: state.universities,
                              hint: "اختر الجامعة",
                              onChanged: (value) {
                                universityId!(value!);
                                context.pop();
                              },
                              label: "الجامعة",
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }
              if (state is FilterLoadingState) {
                context.showLoading();
              }
            },

            child: IconButton(
              onPressed: () {
                cubit.getUniversities(category: .clubs);
              },
              icon: Icon(Icons.filter_list, color: AppColors.primary),
            ),
          );
        },
      ),
    );
  }
}
