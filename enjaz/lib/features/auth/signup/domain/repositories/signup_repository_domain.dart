import 'package:enjaz/features/auth/signup/data/major_models/major_model.dart';
import 'package:enjaz/core/common/models/university_model/university_model.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';

abstract class SignupRepositoryDomain {
  Future<Result<bool, Failure>> getSignUp({
    required String email,
    required String password,
    required String name,
    required String phone,
    required String gender,
    required String majorId,
    required String universityId,
  });

 
  Future<List<UniversityModel>> getUniversities();
  Future<List<MajorModel>> getMajors();
}