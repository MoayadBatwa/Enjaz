import 'package:enjaz/features/auth/signup/data/major_models/major_model.dart';
import 'package:enjaz/core/common/models/university_model/university_model.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/auth/signup/domain/repositories/signup_repository_domain.dart';


@lazySingleton
class SignupuseCase {
  final SignupRepositoryDomain _repositoryData;

  SignupuseCase(this._repositoryData);

  Future<Result<bool, Failure>> getSignUp({
    required String email,
    required String password,
    required String name,
    required String phone,
    required String gender,
    required String majorId,
    required String universityId,
  }) {
    return _repositoryData.getSignUp(
      email: email,
      password: password,
      name: name,
      phone: phone,
      gender: gender,
      majorId: majorId,
      universityId: universityId,
    );
  }

  Future<List<UniversityModel>> getUniversities() {
    return _repositoryData.getUniversities();
  }
  Future<List<MajorModel>> getMajors() {
    return _repositoryData.getMajors();
  }
}
