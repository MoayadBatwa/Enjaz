// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:enjaz/features/auth/otp/data/datasources/otp_remote_data_source.dart'
    as _i344;
import 'package:enjaz/features/auth/otp/data/repositories/otp_repository_data.dart'
    as _i194;
import 'package:enjaz/features/auth/otp/domain/repositories/otp_repository_domain.dart'
    as _i34;
import 'package:enjaz/features/auth/otp/domain/use_cases/otp_use_case.dart'
    as _i147;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initOtp({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i344.BaseOtpRemoteDataSource>(
      () => _i344.OtpRemoteDataSource(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i34.OtpRepositoryDomain>(
      () => _i194.OtpRepositoryData(gh<_i344.BaseOtpRemoteDataSource>()),
    );
    gh.lazySingleton<_i147.OtpUseCase>(
      () => _i147.OtpUseCase(gh<_i34.OtpRepositoryDomain>()),
    );
    return this;
  }
}
