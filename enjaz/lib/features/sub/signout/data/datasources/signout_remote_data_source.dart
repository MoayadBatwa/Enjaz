import 'package:enjaz/core/services/user_service.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';

abstract class BaseSignoutRemoteDataSource {
  Future<bool> getSignout();
}

@LazySingleton(as: BaseSignoutRemoteDataSource)
class SignoutRemoteDataSource implements BaseSignoutRemoteDataSource {
  final SupabaseClient _supabase;
  final UserService _userService;

  SignoutRemoteDataSource(
    this._supabase,
    this._userService,
  );

  @override
  Future<bool> getSignout() async {
    try {
      await _supabase.auth.signOut(scope: SignOutScope.global);

      _userService.setUser = null;

      return true;
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}