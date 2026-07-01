import 'package:enjaz/features/auth/signup/data/major_models/major_model.dart';
import 'package:enjaz/core/common/models/university_model/university_model.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class BaseSignupRemoteDataSource {
  Future<bool> getSignUp({
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

@LazySingleton(as: BaseSignupRemoteDataSource)
class SignupRemoteDataSource implements BaseSignupRemoteDataSource {
  final SupabaseClient _supabase;

  SignupRemoteDataSource(this._supabase);

  @override
  Future<bool> getSignUp({
    required String email,
    required String password,
    required String name,
    required String phone,
    required String gender,
    required String majorId,
    required String universityId,
  }) async {
    await _supabase.auth.signUp(email: email, password: password);
   
    return true;
  }

  @override
  Future<List<UniversityModel>> getUniversities() async {
    final res = await _supabase.from('universities').select();
    return (res as List).map((e) => UniversityModel.fromJson(e)).toList();
  }

  @override
  Future<List<MajorModel>> getMajors() async {
    final res = await _supabase.from('majors').select();

    return (res as List).map((e) => MajorModel.fromJson(e)).toList();
  }
}
