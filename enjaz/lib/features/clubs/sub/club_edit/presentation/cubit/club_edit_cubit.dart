import 'package:enjaz/core/services/user_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/features/clubs/sub/club_edit/domain/use_cases/club_edit_use_case.dart';
import 'package:enjaz/features/clubs/sub/club_edit/presentation/cubit/club_edit_state.dart';
import 'package:get_it/get_it.dart';

class ClubEditCubit extends Cubit<ClubEditState> {
  final ClubEditUseCase _clubEditUseCase;
  final user = GetIt.I<UserService>();
  bool isSupervisor = false;
  String get userId => user.getUser!.id;

  ClubEditCubit(this._clubEditUseCase) : super(ClubEditInitialState());

  Future<void> getClubUpdateMethod({
    required String edit,
    required String clubId,
    required String userId,
  }) async {
    emit(ClubEditLoadingState());
    final result = await _clubEditUseCase.getClubUpdate(
      edit: edit,
      clubId: clubId,
      userId: userId,
    );
    result.when(
      (success) {
        emit(ClubEditSuccessState());
      },
      (whenError) {
        emit(ClubEditErrorState(message: whenError.message));
      },
    );
  }

  Future<void> isUserSupervisor(String clubId) async {
    final result = await _clubEditUseCase.isUserSupervisor(clubId, userId);

    isSupervisor = result;
    if (isClosed) return;
    emit(ClubEditInitialState());
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
