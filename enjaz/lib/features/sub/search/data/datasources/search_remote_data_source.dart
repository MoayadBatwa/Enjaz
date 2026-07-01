import 'package:enjaz/core/constants/app_enums.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';

abstract class BaseSearchRemoteDataSource {
  Future<List<Map<String, dynamic>>> searchQueryMethod({
    required SearchCategoryEnum category,
    required String searchText,
  });
}

@LazySingleton(as: BaseSearchRemoteDataSource)
class SearchRemoteDataSource implements BaseSearchRemoteDataSource {
  final SupabaseClient _supabase;

  SearchRemoteDataSource(this._supabase);

  @override
  Future<List<Map<String, dynamic>>> searchQueryMethod({
    required SearchCategoryEnum category,
    required String searchText,
  }) async {
    try {
      final PostgrestList data;

      // get the query based on the category of the searching item
      switch (category) {
        case .events:
          data = await _supabase
              .from('event_full_details_view')
              .select()
              .eq("is_open", true)
              .gte('date_at', DateTime.now())
              .ilike('title', '%$searchText%');
          break;
        case .clubs:
          data = await _supabase
              .from('clubs')
              .select('*, universities(*)')
              .ilike('name', '%$searchText%');
          break;
        
      }

      return data;
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
