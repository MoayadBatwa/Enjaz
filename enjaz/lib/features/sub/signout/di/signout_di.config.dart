// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:enjaz/core/services/user_service.dart' as _i708;
import 'package:enjaz/features/sub/signout/data/datasources/signout_remote_data_source.dart'
    as _i711;
import 'package:enjaz/features/sub/signout/data/repositories/signout_repository_data.dart'
    as _i558;
import 'package:enjaz/features/sub/signout/domain/repositories/signout_repository_domain.dart'
    as _i250;
import 'package:enjaz/features/sub/signout/domain/use_cases/signout_use_case.dart'
    as _i948;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initSignoutSub({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i711.BaseSignoutRemoteDataSource>(
      () => _i711.SignoutRemoteDataSource(
        gh<_i454.SupabaseClient>(),
        gh<_i708.UserService>(),
      ),
    );
    gh.lazySingleton<_i250.SignoutRepositoryDomain>(
      () =>
          _i558.SignoutRepositoryData(gh<_i711.BaseSignoutRemoteDataSource>()),
    );
    gh.lazySingleton<_i948.SignoutUseCase>(
      () => _i948.SignoutUseCase(gh<_i250.SignoutRepositoryDomain>()),
    );
    return this;
  }
}
