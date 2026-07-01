import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';

abstract class BaseDeleteMemberRemoteDataSource {
  Future<void> deleteMember({
    required String clubId,
    required String userId,
  });
}

@LazySingleton(as: BaseDeleteMemberRemoteDataSource)
class DeleteMemberRemoteDataSource
    implements BaseDeleteMemberRemoteDataSource {
  final SupabaseClient _supabase;

  DeleteMemberRemoteDataSource(this._supabase);

  @override
  Future<void> deleteMember({
    required String clubId,
    required String userId,
  }) async {
    try {
      await _supabase
          .from('club_members')
          .delete()
          .eq('club_id', clubId)
          .eq('user_id', userId);
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}