import 'package:enjaz/features/auth/signup/data/datasources/signup_remote_data_source.dart';
import 'package:enjaz/features/auth/signup/data/major_models/major_model.dart';
import 'package:enjaz/core/common/models/university_model/university_model.dart';
import 'package:enjaz/features/auth/signup/domain/repositories/signup_repository_domain.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';

@LazySingleton(as: SignupRepositoryDomain)
class SignUpRepositoryData implements SignupRepositoryDomain {
  final BaseSignupRemoteDataSource remoteDataSource;

  SignUpRepositoryData(this.remoteDataSource);

  @override
  Future<Result<bool, Failure>> getSignUp({
    required String email,
    required String password,
    required String name,
    required String phone,
    required String gender,
    required String majorId,
    required String universityId,
  }) async {
    try {
      final res = await remoteDataSource.getSignUp(
        email: email,
        password: password,
        name: name,
        phone: phone,
        gender: gender,
        majorId: majorId,
        universityId: universityId,
      );
      return Success(res);
    } catch (e) {
      return Error(FailureExceptions.getException(e));
    }
  }

  @override
 Future<List<UniversityModel>> getUniversities() {
    return remoteDataSource.getUniversities();
  }

  @override
  Future<List<MajorModel>> getMajors() {
    return remoteDataSource.getMajors();
  }

}