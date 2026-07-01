// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:enjaz/features/sub/assign_leader/data/datasources/assign_leader_remote_data_source.dart'
    as _i537;
import 'package:enjaz/features/sub/assign_leader/data/repositories/assign_leader_repository_data.dart'
    as _i413;
import 'package:enjaz/features/sub/assign_leader/domain/repositories/assign_leader_repository_domain.dart'
    as _i192;
import 'package:enjaz/features/sub/assign_leader/domain/use_cases/assign_leader_use_case.dart'
    as _i58;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initAssignLeaderSub({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i537.BaseAssignLeaderRemoteDataSource>(
      () => _i537.AssignLeaderRemoteDataSource(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i192.AssignLeaderRepositoryDomain>(
      () => _i413.AssignLeaderRepositoryData(
        gh<_i537.BaseAssignLeaderRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i58.AssignLeaderUseCase>(
      () => _i58.AssignLeaderUseCase(gh<_i192.AssignLeaderRepositoryDomain>()),
    );
    return this;
  }
}
