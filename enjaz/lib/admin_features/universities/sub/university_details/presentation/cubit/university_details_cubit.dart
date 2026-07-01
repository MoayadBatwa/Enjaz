import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/admin_features/universities/sub/university_details/domain/use_cases/university_details_use_case.dart';
import 'package:enjaz/admin_features/universities/sub/university_details/presentation/cubit/university_details_state.dart';

class UniversityDetailsCubit extends Cubit<UniversityDetailsState> {
  final UniversityDetailsUseCase _universityDetailsUseCase;

  UniversityDetailsCubit(this._universityDetailsUseCase)
    : super(UniversityDetailsInitialState());

  Future<void> getUniversityDetailsMethod(String universityId) async {
    emit(UniversityDetailsLoadingState());
    final result = await _universityDetailsUseCase.getUniversityDetails(
      universityId,
    );
    result.when(
      (success) {
        emit(UniversityDetailsSuccessState(university: success));
      },
      (whenError) {
        emit(UniversityDetailsErrorState(message: whenError.message));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
