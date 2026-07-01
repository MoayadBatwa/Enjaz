import 'package:enjaz/admin_features/admin_panel/sub/analytical_dashboard/domain/entities/university_stat_entity.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';

abstract class AnalyticalDashboardRepositoryDomain {
    Future<Result<List<UniversityStatEntity>, Failure>> getAnalyticalDashboard();
}
