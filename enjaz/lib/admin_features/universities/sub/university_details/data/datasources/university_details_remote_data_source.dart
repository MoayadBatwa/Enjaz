import 'package:enjaz/core/common/models/university_model/university_model.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';

abstract class BaseUniversityDetailsRemoteDataSource {
  Future<UniversityModel> getUniversityDetails(String universityId);
}

@LazySingleton(as: BaseUniversityDetailsRemoteDataSource)
class UniversityDetailsRemoteDataSource
    implements BaseUniversityDetailsRemoteDataSource {
  final SupabaseClient _supabase;

  UniversityDetailsRemoteDataSource(this._supabase);

  @override
  Future<UniversityModel> getUniversityDetails(String universityId) async {
    try {
      final response = await _supabase
          .from('universities')
          .select()
          .eq('id', universityId)
          .single();

      return UniversityModel.fromJson(response);
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
