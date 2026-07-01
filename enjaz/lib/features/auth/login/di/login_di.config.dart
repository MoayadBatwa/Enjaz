// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:enjaz/features/auth/login/data/datasources/login_remote_data_source.dart'
    as _i109;
import 'package:enjaz/features/auth/login/data/repositories/login_repository_data.dart'
    as _i122;
import 'package:enjaz/features/auth/login/domain/repositories/login_repository_domain.dart'
    as _i109;
import 'package:enjaz/features/auth/login/domain/use_cases/login_use_case.dart'
    as _i614;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initLogin({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i109.BaseLoginRemoteDataSource>(
      () => _i109.LoginRemoteDataSource(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i109.LoginRepositoryDomain>(
      () => _i122.LoginRepositoryData(gh<_i109.BaseLoginRemoteDataSource>()),
    );
    gh.lazySingleton<_i614.LoginUseCase>(
      () => _i614.LoginUseCase(gh<_i109.LoginRepositoryDomain>()),
    );
    return this;
  }
}
