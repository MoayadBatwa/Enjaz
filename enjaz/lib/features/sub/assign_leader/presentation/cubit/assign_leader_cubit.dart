import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/features/sub/assign_leader/domain/use_cases/assign_leader_use_case.dart';
import 'package:enjaz/features/sub/assign_leader/presentation/cubit/assign_leader_state.dart';

class AssignLeaderCubit extends Cubit<AssignLeaderState> {
  final AssignLeaderUseCase _assignLeaderUseCase;

  AssignLeaderCubit(this._assignLeaderUseCase)
    : super(AssignLeaderInitialState());

  Future<void> getAssignLeaderMethod({required String clubId}) async {
    final result = await _assignLeaderUseCase.getAssignLeader(clubId: clubId);
    result.when(
      (success) {
        emit(AssignLeaderSuccessState(members: success));
      },
      (whenError) {
        emit(AssignLeaderErrorState(message: whenError.message));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
