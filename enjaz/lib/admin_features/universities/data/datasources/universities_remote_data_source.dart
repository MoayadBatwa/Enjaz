import 'package:enjaz/core/common/models/university_model/university_model.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';

abstract class BaseUniversitiesRemoteDataSource {
  Future<List<UniversityModel>> getUniversities();
  Future<void> deleteUniversity(String id);
}

@LazySingleton(as: BaseUniversitiesRemoteDataSource)
class UniversitiesRemoteDataSource implements BaseUniversitiesRemoteDataSource {
  final SupabaseClient _supabase;

  UniversitiesRemoteDataSource(this._supabase);

  @override
  Future<List<UniversityModel>> getUniversities() async {
    try {
      final response = await _supabase.from('universities').select();

      return response
          .map<UniversityModel>((json) => UniversityModel.fromJson(json))
          .toList();
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }

  @override
  Future<void> deleteUniversity(String id) async {
    await _supabase.from('universities').delete().eq('id', id);
  }
}
