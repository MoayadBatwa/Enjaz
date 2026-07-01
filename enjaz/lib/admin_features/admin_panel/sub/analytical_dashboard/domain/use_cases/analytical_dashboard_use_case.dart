import 'package:enjaz/admin_features/admin_panel/sub/analytical_dashboard/domain/entities/university_stat_entity.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/admin_features/admin_panel/sub/analytical_dashboard/domain/repositories/analytical_dashboard_repository_domain.dart';


@lazySingleton
class AnalyticalDashboardUseCase {
  final AnalyticalDashboardRepositoryDomain _repositoryData;

  AnalyticalDashboardUseCase(this._repositoryData);

   Future<Result<List<UniversityStatEntity>, Failure>> getAnalyticalDashboard() async {
    return _repositoryData.getAnalyticalDashboard();
  }
}
