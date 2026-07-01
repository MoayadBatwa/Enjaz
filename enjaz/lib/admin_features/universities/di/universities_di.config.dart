// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:enjaz/admin_features/universities/data/datasources/universities_remote_data_source.dart'
    as _i103;
import 'package:enjaz/admin_features/universities/data/repositories/universities_repository_data.dart'
    as _i256;
import 'package:enjaz/admin_features/universities/domain/repositories/universities_repository_domain.dart'
    as _i990;
import 'package:enjaz/admin_features/universities/domain/use_cases/universities_use_case.dart'
    as _i1070;
import 'package:enjaz/admin_features/universities/sub/add_university/data/datasources/add_university_remote_data_source.dart'
    as _i410;
import 'package:enjaz/admin_features/universities/sub/add_university/data/repositories/add_university_repository_data.dart'
    as _i840;
import 'package:enjaz/admin_features/universities/sub/add_university/domain/repositories/add_university_repository_domain.dart'
    as _i1018;
import 'package:enjaz/admin_features/universities/sub/add_university/domain/use_cases/add_university_use_case.dart'
    as _i629;
import 'package:enjaz/admin_features/universities/sub/university_details/data/datasources/university_details_remote_data_source.dart'
    as _i402;
import 'package:enjaz/admin_features/universities/sub/university_details/data/repositories/university_details_repository_data.dart'
    as _i614;
import 'package:enjaz/admin_features/universities/sub/university_details/domain/repositories/university_details_repository_domain.dart'
    as _i320;
import 'package:enjaz/admin_features/universities/sub/university_details/domain/use_cases/university_details_use_case.dart'
    as _i48;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initUniversities({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i402.BaseUniversityDetailsRemoteDataSource>(
      () => _i402.UniversityDetailsRemoteDataSource(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i410.BaseAddUniversityRemoteDataSource>(
      () => _i410.AddUniversityRemoteDataSource(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i103.BaseUniversitiesRemoteDataSource>(
      () => _i103.UniversitiesRemoteDataSource(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i320.UniversityDetailsRepositoryDomain>(
      () => _i614.UniversityDetailsRepositoryData(
        gh<_i402.BaseUniversityDetailsRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i1018.AddUniversityRepositoryDomain>(
      () => _i840.AddUniversityRepositoryData(
        gh<_i410.BaseAddUniversityRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i629.AddUniversityUseCase>(
      () => _i629.AddUniversityUseCase(
        gh<_i1018.AddUniversityRepositoryDomain>(),
      ),
    );
    gh.lazySingleton<_i990.UniversitiesRepositoryDomain>(
      () => _i256.UniversitiesRepositoryData(
        gh<_i103.BaseUniversitiesRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i48.UniversityDetailsUseCase>(
      () => _i48.UniversityDetailsUseCase(
        gh<_i320.UniversityDetailsRepositoryDomain>(),
      ),
    );
    gh.lazySingleton<_i1070.UniversitiesUseCase>(
      () =>
          _i1070.UniversitiesUseCase(gh<_i990.UniversitiesRepositoryDomain>()),
    );
    return this;
  }
}
