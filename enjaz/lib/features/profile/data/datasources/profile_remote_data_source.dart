import 'package:enjaz/core/services/user_service.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:enjaz/features/profile/data/models/profile_model.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';

abstract class BaseProfileRemoteDataSource {
  Future<ProfileModel> getProfile();
  Future<void> updateUserAvatar(String userId, String type);
}

@LazySingleton(as: BaseProfileRemoteDataSource)
class ProfileRemoteDataSource implements BaseProfileRemoteDataSource {
  final SupabaseClient _supabase;
  final UserService _userService;
  ProfileRemoteDataSource(this._userService, this._supabase);

  @override
  Future<ProfileModel> getProfile() async {
    try {
      final user = _userService.getUser;

      if (user != null) {
        return ProfileModel(
          id: user.id,
          authId: user.authId,
          name: user.name,
          email: user.email,
          createdAt: user.createdAt,
          role: user.role,
          phoneNumber: user.phoneNumber,
          universities: user.universities,
          majors: user.majors,
          gender: user.gender,
        );
      }
      throw ("Not Found User");
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }

  @override
  Future<void> updateUserAvatar(String userId, String type) async {
    try {
      await _supabase
          .from('users')
          .update({'avatar_type': type})
          .eq('id', userId);
    } catch (e) {
      throw FailureExceptions.getException(e);
    }
  }
}
