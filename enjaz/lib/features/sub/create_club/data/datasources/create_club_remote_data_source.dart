


import 'package:enjaz/core/common/models/university_model/university_model.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/services/local_keys_service.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class BaseCreateClubRemoteDataSource {
  Future<void> getCreateClub({
    required String name,
    required String description,
    required String universityId,
    required String assignSupervisor,
  });
  Future<List<UniversityModel>> getUniversities();
  Future<String> getAssignSupervisor({required String universityId});
}

@LazySingleton(as: BaseCreateClubRemoteDataSource)
class CreateClubRemoteDataSource implements BaseCreateClubRemoteDataSource {
  final SupabaseClient _supabase;
  final LocalKeysService _localKeysService;

  CreateClubRemoteDataSource(this._localKeysService, this._supabase);

  @override
  Future<void> getCreateClub({
    required String name,
    required String description,
    required String universityId,
    required String assignSupervisor,
  }) async {
    try {
      final clubId = await _supabase
          .from('clubs')
          .insert({
            'name': name,
            'description': description,
            'logo_url': "assets/images/logo/logo.png",
            'universities_id': universityId,
          })
          .select('id')
          .single();

      await _supabase.from('club_members').insert({
        'club_id': clubId['id'],
        'user_id': assignSupervisor,
        'role': 'supervisor',
      });

      await _supabase.functions.invoke(
        'roles',
        body: {'userId': assignSupervisor, 'roles': 'supervisor'},
      );
      
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }

  @override
  Future<List<UniversityModel>> getUniversities() async {
    final universities = await _supabase.from('universities').select();

    return universities
        .map((university) => UniversityModel.fromJson(university))
        .toList();
  }

  @override
  Future<String> getAssignSupervisor({required String universityId}) async {
    return universityId;
  }
}
