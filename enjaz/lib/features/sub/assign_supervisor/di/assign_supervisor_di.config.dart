// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:enjaz/features/sub/assign_supervisor/data/datasources/assign_supervisor_remote_data_source.dart'
    as _i143;
import 'package:enjaz/features/sub/assign_supervisor/data/repositories/assign_supervisor_repository_data.dart'
    as _i169;
import 'package:enjaz/features/sub/assign_supervisor/domain/repositories/assign_supervisor_repository_domain.dart'
    as _i512;
import 'package:enjaz/features/sub/assign_supervisor/domain/use_cases/assign_supervisor_use_case.dart'
    as _i89;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initAssignSupervisorSub({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i143.BaseAssignSupervisorRemoteDataSource>(
      () => _i143.AssignSupervisorRemoteDataSource(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i512.AssignSupervisorRepositoryDomain>(
      () => _i169.AssignSupervisorRepositoryData(
        gh<_i143.BaseAssignSupervisorRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i89.AssignSupervisorUseCase>(
      () => _i89.AssignSupervisorUseCase(
        gh<_i512.AssignSupervisorRepositoryDomain>(),
      ),
    );
    return this;
  }
}
