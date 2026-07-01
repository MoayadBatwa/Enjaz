// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:enjaz/core/services/file_picker_service.dart' as _i227;
import 'package:enjaz/features/sub/event_report/data/datasources/event_report_remote_data_source.dart'
    as _i338;
import 'package:enjaz/features/sub/event_report/data/repositories/event_report_repository_data.dart'
    as _i5;
import 'package:enjaz/features/sub/event_report/domain/repositories/event_report_repository_domain.dart'
    as _i892;
import 'package:enjaz/features/sub/event_report/domain/use_cases/event_report_use_case.dart'
    as _i455;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initEventReportSub({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i338.BaseEventReportRemoteDataSource>(
      () => _i338.EventReportRemoteDataSource(
        gh<_i227.FilePickerService>(),
        gh<_i454.SupabaseClient>(),
      ),
    );
    gh.lazySingleton<_i892.EventReportRepositoryDomain>(
      () => _i5.EventReportRepositoryData(
        gh<_i338.BaseEventReportRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i455.EventReportUseCase>(
      () => _i455.EventReportUseCase(gh<_i892.EventReportRepositoryDomain>()),
    );
    return this;
  }
}
