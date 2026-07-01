import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/features/clubs/sub/delete_member/domain/use_cases/delete_member_use_case.dart';
import 'package:enjaz/features/clubs/sub/delete_member/presentation/cubit/delete_member_state.dart';

class DeleteMemberCubit extends Cubit<DeleteMemberState> {
  final DeleteMemberUseCase _deleteMemberUseCase;

  DeleteMemberCubit(this._deleteMemberUseCase) : super(DeleteMemberInitialState());

  Future<void> deleteMemberMethod({
    required String clubId,
    required String userId,
  }) async {
    emit(DeleteMemberLoadingState());

    final result = await _deleteMemberUseCase.deleteMember(clubId: clubId, userId: userId);

    result.when(
      (success) {
        emit(DeleteMemberSuccessState());
      },
      (whenError) {
        emit(DeleteMemberErrorState(message: whenError.message));
      },
    );
  }
}
