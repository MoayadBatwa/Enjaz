import 'package:enjaz/admin_features/admin_panel/sub/analytical_dashboard/data/models/university_stat_model.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';

abstract class BaseAnalyticalDashboardRemoteDataSource {
  Future<List<UniversityStatModel>> getAnalyticalDashboard();
}

@LazySingleton(as: BaseAnalyticalDashboardRemoteDataSource)
class AnalyticalDashboardRemoteDataSource
    implements BaseAnalyticalDashboardRemoteDataSource {
  final SupabaseClient _supabase;

  AnalyticalDashboardRemoteDataSource(this._supabase);

  @override
  Future<List<UniversityStatModel>> getAnalyticalDashboard() async {
    try {
      final response = await _supabase.from('universities_analytics').select();

      return response
          .map((data) => UniversityStatModel.fromJson(data))
          .toList();
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
