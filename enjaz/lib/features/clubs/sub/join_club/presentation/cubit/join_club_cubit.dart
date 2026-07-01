import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/features/clubs/sub/join_club/domain/use_cases/join_club_use_case.dart';
import 'package:enjaz/features/clubs/sub/join_club/presentation/cubit/join_club_state.dart';

class JoinClubCubit extends Cubit<JoinClubState> {
  final JoinClubUseCase _joinClubUseCase;

  JoinClubCubit(this._joinClubUseCase) : super(JoinClubInitialState());
  Future<void> joinClub({required String clubId}) async {
    emit(JoinClubLoadingState());

    final result = await _joinClubUseCase.joinClub(clubId: clubId);

    result.when(
      (success) {
        if (isClosed) return;
        emit(JoinClubSuccessState(message: success));
      },
      (whenError) {
        emit(JoinClubErrorState(message: whenError.message));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
