// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:enjaz/features/event_schedule/data/datasources/event_schedule_remote_data_source.dart'
    as _i550;
import 'package:enjaz/features/event_schedule/data/repositories/event_schedule_repository_data.dart'
    as _i689;
import 'package:enjaz/features/event_schedule/domain/repositories/event_schedule_repository_domain.dart'
    as _i1057;
import 'package:enjaz/features/event_schedule/domain/use_cases/event_schedule_use_case.dart'
    as _i1072;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initEventSchedule({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i550.BaseEventScheduleRemoteDataSource>(
      () => _i550.EventScheduleRemoteDataSource(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i1057.EventScheduleRepositoryDomain>(
      () => _i689.EventScheduleRepositoryData(
        gh<_i550.BaseEventScheduleRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i1072.EventScheduleUseCase>(
      () => _i1072.EventScheduleUseCase(
        gh<_i1057.EventScheduleRepositoryDomain>(),
      ),
    );
    return this;
  }
}
