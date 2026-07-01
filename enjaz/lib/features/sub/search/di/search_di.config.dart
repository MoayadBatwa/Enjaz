// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:enjaz/features/sub/search/data/datasources/search_remote_data_source.dart'
    as _i154;
import 'package:enjaz/features/sub/search/data/repositories/search_repository_data.dart'
    as _i255;
import 'package:enjaz/features/sub/search/domain/repositories/search_repository_domain.dart'
    as _i435;
import 'package:enjaz/features/sub/search/domain/use_cases/search_use_case.dart'
    as _i587;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initSearchSub({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i154.BaseSearchRemoteDataSource>(
      () => _i154.SearchRemoteDataSource(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i435.SearchRepositoryDomain>(
      () => _i255.SearchRepositoryData(gh<_i154.BaseSearchRemoteDataSource>()),
    );
    gh.lazySingleton<_i587.SearchUseCase>(
      () => _i587.SearchUseCase(gh<_i435.SearchRepositoryDomain>()),
    );
    return this;
  }
}
