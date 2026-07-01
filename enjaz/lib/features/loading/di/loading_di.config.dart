// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:enjaz/core/services/user_service.dart' as _i708;
import 'package:enjaz/features/loading/data/datasources/loading_remote_data_source.dart'
    as _i936;
import 'package:enjaz/features/loading/data/repositories/loading_repository_data.dart'
    as _i320;
import 'package:enjaz/features/loading/domain/repositories/loading_repository_domain.dart'
    as _i821;
import 'package:enjaz/features/loading/domain/use_cases/loading_use_case.dart'
    as _i674;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initLoading({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i936.BaseLoadingRemoteDataSource>(
      () => _i936.LoadingRemoteDataSource(
        gh<_i454.SupabaseClient>(),
        gh<_i708.UserService>(),
      ),
    );
    gh.lazySingleton<_i821.LoadingRepositoryDomain>(
      () =>
          _i320.LoadingRepositoryData(gh<_i936.BaseLoadingRemoteDataSource>()),
    );
    gh.lazySingleton<_i674.LoadingUseCase>(
      () => _i674.LoadingUseCase(gh<_i821.LoadingRepositoryDomain>()),
    );
    return this;
  }
}
