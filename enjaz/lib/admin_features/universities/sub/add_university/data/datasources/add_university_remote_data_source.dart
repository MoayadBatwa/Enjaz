import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class BaseAddUniversityRemoteDataSource {
  Future<void> addUniversity({
    required String name,
    required String description,
    required String location,
    required String branch,
    required String gender,
    required String code,
  });
}

@LazySingleton(as: BaseAddUniversityRemoteDataSource)
class AddUniversityRemoteDataSource
    implements BaseAddUniversityRemoteDataSource {
  final SupabaseClient _supabase;

  AddUniversityRemoteDataSource(this._supabase);

  @override
  Future<void> addUniversity({
    required String name,
    required String description,
    required String location,
    required String branch,
    required String gender,
    required String code,
  }) async {
    await _supabase.from('universities').insert({
      'name': name,
      'description': description,
      'location': location,
      'branch': branch,
      'gender': gender,
      'code': code,
    });
  }
}
