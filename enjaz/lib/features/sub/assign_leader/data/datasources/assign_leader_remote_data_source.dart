import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:enjaz/features/sub/assign_leader/data/models/assign_leader_model.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';

abstract class BaseAssignLeaderRemoteDataSource {
  Future<List<AssignLeaderModel>> getAssignLeader({required String clubId});
}

@LazySingleton(as: BaseAssignLeaderRemoteDataSource)
class AssignLeaderRemoteDataSource implements BaseAssignLeaderRemoteDataSource {
  final SupabaseClient _supabase;

  AssignLeaderRemoteDataSource(this._supabase);

  @override
  Future<List<AssignLeaderModel>> getAssignLeader({
    required String clubId,
  }) async {
    try {
      final users = await _supabase
          .from('club_members')
          .select('role, users_information_view(*)')
          .eq('club_id', clubId);

      print(users.toString());

      return users.map((user) => AssignLeaderModel.fromJson(user)).toList();
    } catch (error) {
      print(error);
      throw FailureExceptions.getException(error);
    }
  }
}
