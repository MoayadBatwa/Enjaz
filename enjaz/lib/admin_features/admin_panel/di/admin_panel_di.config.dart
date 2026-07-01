// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:enjaz/admin_features/admin_panel/data/datasources/admin_panel_remote_data_source.dart'
    as _i308;
import 'package:enjaz/admin_features/admin_panel/data/repositories/admin_panel_repository_data.dart'
    as _i398;
import 'package:enjaz/admin_features/admin_panel/domain/repositories/admin_panel_repository_domain.dart'
    as _i328;
import 'package:enjaz/admin_features/admin_panel/domain/use_cases/admin_panel_use_case.dart'
    as _i105;
import 'package:enjaz/admin_features/admin_panel/sub/analytical_dashboard/data/datasources/analytical_dashboard_remote_data_source.dart'
    as _i562;
import 'package:enjaz/admin_features/admin_panel/sub/analytical_dashboard/data/repositories/analytical_dashboard_repository_data.dart'
    as _i869;
import 'package:enjaz/admin_features/admin_panel/sub/analytical_dashboard/domain/repositories/analytical_dashboard_repository_domain.dart'
    as _i630;
import 'package:enjaz/admin_features/admin_panel/sub/analytical_dashboard/domain/use_cases/analytical_dashboard_use_case.dart'
    as _i929;
import 'package:enjaz/core/services/local_keys_service.dart' as _i954;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initAdminPanel({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i562.BaseAnalyticalDashboardRemoteDataSource>(
      () =>
          _i562.AnalyticalDashboardRemoteDataSource(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i308.BaseAdminPanelRemoteDataSource>(
      () => _i308.AdminPanelRemoteDataSource(
        gh<_i954.LocalKeysService>(),
        gh<_i454.SupabaseClient>(),
      ),
    );
    gh.lazySingleton<_i328.AdminPanelRepositoryDomain>(
      () => _i398.AdminPanelRepositoryData(
        gh<_i308.BaseAdminPanelRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i630.AnalyticalDashboardRepositoryDomain>(
      () => _i869.AnalyticalDashboardRepositoryData(
        gh<_i562.BaseAnalyticalDashboardRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i929.AnalyticalDashboardUseCase>(
      () => _i929.AnalyticalDashboardUseCase(
        gh<_i630.AnalyticalDashboardRepositoryDomain>(),
      ),
    );
    gh.lazySingleton<_i105.AdminPanelUseCase>(
      () => _i105.AdminPanelUseCase(gh<_i328.AdminPanelRepositoryDomain>()),
    );
    return this;
  }
}
