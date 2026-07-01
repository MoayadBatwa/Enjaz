
import 'package:enjaz/admin_features/admin_panel/sub/analytical_dashboard/data/models/university_stat_model.dart';
import 'package:enjaz/admin_features/admin_panel/sub/analytical_dashboard/domain/entities/university_stat_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/errors/failure.dart';

import 'package:enjaz/admin_features/admin_panel/sub/analytical_dashboard/data/datasources/analytical_dashboard_remote_data_source.dart';
import 'package:enjaz/admin_features/admin_panel/sub/analytical_dashboard/domain/repositories/analytical_dashboard_repository_domain.dart';

@LazySingleton(as: AnalyticalDashboardRepositoryDomain)
class AnalyticalDashboardRepositoryData implements AnalyticalDashboardRepositoryDomain{
  final BaseAnalyticalDashboardRemoteDataSource remoteDataSource;


  AnalyticalDashboardRepositoryData(this.remoteDataSource);

@override
  Future<Result<List<UniversityStatEntity>, Failure>> getAnalyticalDashboard() async {
    try {
      final response = await remoteDataSource.getAnalyticalDashboard();
      return Success(response.map((item) => item.toEntity()).toList());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
