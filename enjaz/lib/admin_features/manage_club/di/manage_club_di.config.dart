// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:enjaz/admin_features/manage_club/data/datasources/manage_club_remote_data_source.dart'
    as _i277;
import 'package:enjaz/admin_features/manage_club/data/repositories/manage_club_repository_data.dart'
    as _i712;
import 'package:enjaz/admin_features/manage_club/domain/repositories/manage_club_repository_domain.dart'
    as _i683;
import 'package:enjaz/admin_features/manage_club/domain/use_cases/manage_club_use_case.dart'
    as _i301;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initManageClub({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i277.BaseManageClubRemoteDataSource>(
      () => _i277.ManageClubRemoteDataSource(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i683.ManageClubRepositoryDomain>(
      () => _i712.ManageClubRepositoryData(
        gh<_i277.BaseManageClubRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i301.ManageClubUseCase>(
      () => _i301.ManageClubUseCase(gh<_i683.ManageClubRepositoryDomain>()),
    );
    return this;
  }
}
