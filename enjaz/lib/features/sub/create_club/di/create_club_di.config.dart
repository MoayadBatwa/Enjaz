// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:enjaz/core/services/local_keys_service.dart' as _i954;
import 'package:enjaz/features/sub/create_club/data/datasources/create_club_remote_data_source.dart'
    as _i183;
import 'package:enjaz/features/sub/create_club/data/repositories/create_club_repository_data.dart'
    as _i524;
import 'package:enjaz/features/sub/create_club/domain/repositories/create_club_repository_domain.dart'
    as _i379;
import 'package:enjaz/features/sub/create_club/domain/use_cases/create_club_use_case.dart'
    as _i383;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initCreateClubSub({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i183.BaseCreateClubRemoteDataSource>(
      () => _i183.CreateClubRemoteDataSource(
        gh<_i954.LocalKeysService>(),
        gh<_i454.SupabaseClient>(),
      ),
    );
    gh.lazySingleton<_i379.CreateClubRepositoryDomain>(
      () => _i524.CreateClubRepositoryData(
        gh<_i183.BaseCreateClubRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i383.CreateClubUseCase>(
      () => _i383.CreateClubUseCase(gh<_i379.CreateClubRepositoryDomain>()),
    );
    return this;
  }
}
