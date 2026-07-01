import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/features/clubs/domain/use_cases/clubs_use_case.dart';
import 'package:enjaz/features/clubs/presentation/cubit/clubs_state.dart';

class ClubCubit extends Cubit<ClubsState> {
  final ClubUseCase _clubsUseCase;

  ClubCubit(this._clubsUseCase) : super(ClubsInitialState()) {
    getClubsMethod();
  }

  Future<void> getClubsMethod() async {
    emit(ClubsLoadingState());
    _clubsUseCase.getClubs().listen((onData) {
      onData.when(
        (success) {
          if (isClosed) return;
          emit(ClubsSuccessState(clubs: success));
        },
        (whenError) {
          emit(ClubsErrorState(message: whenError.message));
        },
      );
    });
  }

  Future<void> getClubsFilterMethod({required String search}) async {
    final result = await _clubsUseCase.getClubsFilterMethod(search: search);
    result.when(
      (success) {
        emit(ClubsFilterSuccessState(clubs: success));
      },
      (whenError) {
        emit(ClubsErrorState(message: whenError.message));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
