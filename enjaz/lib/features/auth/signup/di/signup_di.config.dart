// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:enjaz/features/auth/signup/data/datasources/signup_remote_data_source.dart'
    as _i93;
import 'package:enjaz/features/auth/signup/data/repositories/signup_repository_data.dart'
    as _i787;
import 'package:enjaz/features/auth/signup/domain/repositories/signup_repository_domain.dart'
    as _i967;
import 'package:enjaz/features/auth/signup/domain/use_cases/signup_use_case.dart'
    as _i611;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initSignup({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i93.BaseSignupRemoteDataSource>(
      () => _i93.SignupRemoteDataSource(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i967.SignupRepositoryDomain>(
      () => _i787.SignUpRepositoryData(gh<_i93.BaseSignupRemoteDataSource>()),
    );
    gh.lazySingleton<_i611.SignupuseCase>(
      () => _i611.SignupuseCase(gh<_i967.SignupRepositoryDomain>()),
    );
    return this;
  }
}
