import 'package:enjaz/core/common/entities/club_entity/club_entity.dart';
import 'package:enjaz/core/common/entities/event_details_entity/event_details_entity.dart';
import 'package:enjaz/core/constants/app_enums.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/features/sub/search/domain/use_cases/search_use_case.dart';
import 'package:enjaz/features/sub/search/presentation/cubit/search_state.dart';
import 'package:multiple_result/multiple_result.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchUseCase _searchUseCase;

  SearchCubit(this._searchUseCase) : super(SearchInitialState());

  Future<void> searchQueryMethod({
    required SearchCategoryEnum category,
    required String searchText,
  }) async {
    if (isClosed) return;
    emit(SearchLoadingState());

    final Result<List<dynamic>, Failure> result;

    switch (category) {
      case SearchCategoryEnum.events:
        result = await _searchUseCase.searchQueryMethod<EventDetailsEntity>(
          category: category,
          searchText: searchText,
        );
        break;

      case SearchCategoryEnum.clubs:
        result = await _searchUseCase.searchQueryMethod<ClubEntity>(
          category: category,
          searchText: searchText,
        );
        break;
    }

    result.when(
      (success) {
        if (success.isEmpty) {
          emit(SearchZeroResultState());
        } else {
          emit(SearchSuccessState(list: success));
        }
      },
      (whenError) {
        emit(SearchErrorState(message: whenError.message));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
