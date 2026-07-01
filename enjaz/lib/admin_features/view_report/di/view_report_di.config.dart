// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:enjaz/admin_features/view_report/data/datasources/view_report_remote_data_source.dart'
    as _i1045;
import 'package:enjaz/admin_features/view_report/data/repositories/view_report_repository_data.dart'
    as _i516;
import 'package:enjaz/admin_features/view_report/domain/repositories/view_report_repository_domain.dart'
    as _i900;
import 'package:enjaz/admin_features/view_report/domain/use_cases/view_report_use_case.dart'
    as _i248;
import 'package:enjaz/core/network/dio_client.dart' as _i879;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initViewReport({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i1045.BaseViewReportRemoteDataSource>(
      () => _i1045.ViewReportRemoteDataSource(
        gh<_i879.DioClient>(),
        gh<_i454.SupabaseClient>(),
      ),
    );
    gh.lazySingleton<_i900.ViewReportRepositoryDomain>(
      () => _i516.ViewReportRepositoryData(
        gh<_i1045.BaseViewReportRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i248.ViewReportUseCase>(
      () => _i248.ViewReportUseCase(gh<_i900.ViewReportRepositoryDomain>()),
    );
    return this;
  }
}
