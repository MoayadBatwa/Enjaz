import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:enjaz/features/student_clubs/domain/use_cases/student_clubs_use_case.dart';
import 'package:enjaz/features/student_clubs/presentation/cubit/student_clubs_state.dart';

class StudentClubsCubit extends Cubit<StudentClubsState> {
  final StudentClubsUseCase _studentClubsUseCase;

  StudentClubsCubit(this._studentClubsUseCase)
    : super(StudentClubsLoadingState()) {
    getStudentClubsMethod();
  }

  Future<void> getStudentClubsMethod() async {
    emit(StudentClubsLoadingState());

    final result = await _studentClubsUseCase.getStudentClubs();

    result.when(
      (success) {
        if (isClosed) return;

        if (success.isEmpty) {
          emit(StudentClubsEmptyState());
        } else {
          emit(StudentClubsSuccessState(clubs: success));
        }
      },
      (whenError) {
        emit(StudentClubsErrorState(message: whenError.message));
      },
    );
  }
}
