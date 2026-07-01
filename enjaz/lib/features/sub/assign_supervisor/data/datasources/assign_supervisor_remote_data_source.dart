import 'package:enjaz/core/common/models/user_model/user_model.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:enjaz/features/sub/assign_supervisor/data/models/assign_supervisor_model.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';

abstract class BaseAssignSupervisorRemoteDataSource {
  Future<List<UserModel>> getAssignSupervisor({
    required String universityId,
  });
}

@LazySingleton(as: BaseAssignSupervisorRemoteDataSource)
class AssignSupervisorRemoteDataSource
    implements BaseAssignSupervisorRemoteDataSource {
  final SupabaseClient _supabase;

  AssignSupervisorRemoteDataSource(this._supabase);

  @override
  Future<List<UserModel>> getAssignSupervisor({
    required String universityId,
  }) async {
    try {
      final users = await _supabase
          .from('users')
          .select('* ,majors(*),universities(*)')
          .eq('university_id', universityId)
          .eq('role', 'supervisor');

      print(users.toString());
      return users.map((user) => UserModel.fromJson(user)).toList();
    } catch (error) {
      print(error);
      throw FailureExceptions.getException(error);
    }
  }
}
