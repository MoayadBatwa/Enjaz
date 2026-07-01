import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/admin_features/universities/sub/add_university/domain/use_cases/add_university_use_case.dart';
import 'package:enjaz/admin_features/universities/sub/add_university/presentation/cubit/add_university_state.dart';

class AddUniversityCubit extends Cubit<AddUniversityState> {
  final AddUniversityUseCase _addUniversityUseCase;

  AddUniversityCubit(this._addUniversityUseCase)
    : super(AddUniversityInitialState());

  Future<void> addUniversity({
    required String name,
    required String description,
    required String location,
    required String branch,
    required String gender,
    required String code,
  }) async {
    emit(AddUniversityLoadingState());
    final result = await _addUniversityUseCase.addUniversity(
      name: name,
      description: description,
      location: location,
      branch: branch,
      gender: gender,
      code: code,
    );
    result.when(
      (success) {
        emit(AddUniversitySuccessState());
      },
      (whenError) {
        emit(AddUniversityErrorState(message: whenError.message));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
