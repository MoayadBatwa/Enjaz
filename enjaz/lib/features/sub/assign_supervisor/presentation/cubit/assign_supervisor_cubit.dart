import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/features/sub/assign_supervisor/domain/use_cases/assign_supervisor_use_case.dart';
import 'package:enjaz/features/sub/assign_supervisor/presentation/cubit/assign_supervisor_state.dart';

class AssignSupervisorCubit extends Cubit<AssignSupervisorState> {
  final AssignSupervisorUseCase _assignSupervisorUseCase;

  AssignSupervisorCubit(this._assignSupervisorUseCase)
    : super(AssignSupervisorInitialState());

  Future<void> getAssignSupervisorMethod({required String universityId}) async {
    final result = await _assignSupervisorUseCase.getAssignSupervisor(
      universityId: universityId,
    );
    result.when(
      (success) {
        emit(AssignSupervisorSuccessState(supervisor: success));
      },
      (whenError) {
        emit(AssignSupervisorErrorState(message: whenError.message));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
