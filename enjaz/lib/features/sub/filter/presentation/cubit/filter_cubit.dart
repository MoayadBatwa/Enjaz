import 'package:enjaz/core/common/entities/event_entity/event_entity.dart';
import 'package:enjaz/core/common/entities/university_entity/university_entity.dart';
import 'package:enjaz/core/constants/app_enums.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/features/sub/filter/domain/use_cases/filter_use_case.dart';
import 'package:enjaz/features/sub/filter/presentation/cubit/filter_state.dart';
import 'package:multiple_result/multiple_result.dart';

class FilterCubit extends Cubit<FilterState> {
  final FilterUseCase _filterUseCase;

  FilterCubit(this._filterUseCase) : super(FilterInitialState());

  Future<void> getUniversities({required FilterCategoryEnum category}) async {
    emit(FilterLoadingState());
    final Result<List<dynamic>, Failure> result;

    switch (category) {
      case FilterCategoryEnum.clubs:
        result = await _filterUseCase.getUniversities<UniversityEntity>();

      case FilterCategoryEnum.events:
        result = await _filterUseCase.getFilter<EventEntity>(
          category: category,
        );
    }

    result.when(
      (success) {
        emit(UniversitiesSuccessState(universities: success));
      },
      (whenError) {
        emit(FilterErrorState(message: whenError.message));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
