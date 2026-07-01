// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:enjaz/features/sub/filter/data/datasources/filter_remote_data_source.dart'
    as _i9;
import 'package:enjaz/features/sub/filter/data/repositories/filter_repository_data.dart'
    as _i624;
import 'package:enjaz/features/sub/filter/domain/repositories/filter_repository_domain.dart'
    as _i649;
import 'package:enjaz/features/sub/filter/domain/use_cases/filter_use_case.dart'
    as _i1055;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initFilterSub({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i9.BaseFilterRemoteDataSource>(
      () => _i9.FilterRemoteDataSource(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i649.FilterRepositoryDomain>(
      () => _i624.FilterRepositoryData(gh<_i9.BaseFilterRemoteDataSource>()),
    );
    gh.lazySingleton<_i1055.FilterUseCase>(
      () => _i1055.FilterUseCase(gh<_i649.FilterRepositoryDomain>()),
    );
    return this;
  }
}
