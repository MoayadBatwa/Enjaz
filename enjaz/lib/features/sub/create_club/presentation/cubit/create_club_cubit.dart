import 'package:enjaz/core/common/entities/university_entity/university_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/features/sub/create_club/domain/use_cases/create_club_use_case.dart';
import 'package:enjaz/features/sub/create_club/presentation/cubit/create_club_state.dart';

class CreateClubCubit extends Cubit<CreateClubState> {
  final CreateClubUseCase _createClubUseCase;

  List<UniversityEntity> universities = [];

  CreateClubCubit(this._createClubUseCase) : super(CreateClubInitialState());

  Future<void> getCreateClubMethod({
    required String name,
    required String description,
    required String universityId,
    required String assignSupervisor,
  }) async {
    final result = await _createClubUseCase.getCreateClub(
      name: name,
      description: description,
      universityId: universityId,
      assignSupervisor: assignSupervisor,
    );
    result.when(
      (success) {
        emit(CreateClubSuccessState());
      },
      (whenError) {
        emit(CreateClubErrorState(message: whenError.message));
      },
    );
  }

  Future<void> getLoadData() async {
    final result = await _createClubUseCase.getUniversities();

    result.when(
      (success) {
        universities = success;
        emit(CreateClubInitialState());
      },
      (whenError) {
        emit(CreateClubErrorState(message: whenError.message));
      },
    );
  }

  Future<void> getAssignSupervisor({required String universityId}) async {
    emit(CreateClubLoadingState());
    final result = await _createClubUseCase.getAssignSupervisor(
      universityId: universityId,
    );

    result.when(
      (success) {
        emit(CreateClubSpecificUniversityState(universityId: success));
      },
      (whenError) {
        emit(CreateClubErrorState(message: whenError.message));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
