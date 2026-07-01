import 'package:enjaz/core/services/user_service.dart';
import 'package:enjaz/features/auth/signup/data/major_models/major_model.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';

abstract class BaseProfileInfoRemoteDataSource {
  Future<List<MajorModel>> getProfileInfo();
  Future<void> getProfileUpdateMethod({
    required String name,
    required String phoneNumber,
    required String major,
    required String gender,
  });
}

@LazySingleton(as: BaseProfileInfoRemoteDataSource)
class ProfileInfoRemoteDataSource implements BaseProfileInfoRemoteDataSource {
  final SupabaseClient _supabase;
  final UserService _userService;

  ProfileInfoRemoteDataSource(this._userService, this._supabase);

  @override
  Future<List<MajorModel>> getProfileInfo() async {
    try {
      final majors = await _supabase.from('majors').select();
      return majors.map((major) => MajorModel.fromJson(major)).toList();
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }

  @override
  Future<void> getProfileUpdateMethod({
    required String name,
    required String phoneNumber,
    required String major,
    required String gender,
  }) async {
    try {
      await _supabase
          .from('users')
          .update({
            'phone_number': phoneNumber,
            'name': name,
            'gender': gender,
            "majors_id": major,
          })
          .eq('id', _userService.getUser!.id);
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
