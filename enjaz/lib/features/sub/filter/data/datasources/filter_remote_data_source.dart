import 'package:enjaz/core/common/models/university_model/university_model.dart';
import 'package:enjaz/core/constants/app_enums.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';

abstract class BaseFilterRemoteDataSource {
  Future<List<Map<String, dynamic>>> getFilter({
    required FilterCategoryEnum category,
  });
  Future<List<UniversityModel>> getUniversities();
}

@LazySingleton(as: BaseFilterRemoteDataSource)
class FilterRemoteDataSource implements BaseFilterRemoteDataSource {
  final SupabaseClient _supabase;
  FilterRemoteDataSource(this._supabase);

  @override
  Future<List<Map<String, dynamic>>> getFilter({
    required FilterCategoryEnum category,
  }) async {
    try {
      final PostgrestList data;

      switch (category) {
        case .clubs:
          data = await _supabase.from('universities').select();
        case .events:
          data = await _supabase.from('events').select();
      }

      return data;
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }

  @override
  Future<List<UniversityModel>> getUniversities() async {
    final res = await _supabase.from('universities').select();
    return (res as List).map((e) => UniversityModel.fromJson(e)).toList();
  }
}
