import 'package:enjaz/core/common/models/user_model/user_model.dart';
import 'package:enjaz/core/services/user_service.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:enjaz/features/loading/data/models/loading_model.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';

abstract class BaseLoadingRemoteDataSource {
  Future<LoadingModel> getLoading();
}

@LazySingleton(as: BaseLoadingRemoteDataSource)
class LoadingRemoteDataSource implements BaseLoadingRemoteDataSource {
  final SupabaseClient _supabase;
  final UserService _currentUser;

  LoadingRemoteDataSource(this._supabase, this._currentUser);

  @override
  Future<LoadingModel> getLoading() async {
    try {
      final userToken = _supabase.auth.currentSession?.accessToken;

      final isUser = userToken != null;

      final isExpired = _supabase.auth.currentSession?.isExpired ?? true;

      if (isUser && !isExpired) {
        final role =
            _supabase.auth.currentUser?.appMetadata['role'] ?? 'student';

        final userProfile = await _supabase
            .from('users')
            .select('*, universities(*), majors(*)')
            .eq('id', _supabase.auth.currentUser!.id)
            .single();

        final userMap = {...userProfile, 'role': role};

        final UserModel user = UserModel.fromJson(userMap);

        _currentUser.setUser = user;

       

        return LoadingModel(isLogin: true);
      }

      return LoadingModel(isLogin: false);
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
