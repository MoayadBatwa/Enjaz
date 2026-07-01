import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/admin_features/universities/domain/use_cases/universities_use_case.dart';
import 'package:enjaz/admin_features/universities/presentation/cubit/universities_state.dart';

class UniversitiesCubit extends Cubit<UniversitiesState> {
  final UniversitiesUseCase _universitiesUseCase;

  UniversitiesCubit(this._universitiesUseCase)
    : super(UniversitiesInitialState());

  Future<void> getUniversitiesMethod() async {
    emit(UniversitiesLoadingState());
    final result = await _universitiesUseCase.getUniversities();
    result.when(
      (success) {
        emit(UniversitiesSuccessState(universities: success));
      },
      (whenError) {
        emit(UniversitiesErrorState(message: whenError.message));
      },
    );
  }

  Future<void> deleteUniversity(String id) async {
    emit(UniversitiesLoadingState());

    final result = await _universitiesUseCase.deleteUniversity(id);

    result.when(
      (success) {
        getUniversitiesMethod();
      },
      (whenError) {
        emit(UniversitiesErrorState(message: whenError.message));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
