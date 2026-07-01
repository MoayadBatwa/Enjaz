// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:enjaz/core/services/local_keys_service.dart' as _i954;
import 'package:enjaz/core/services/user_service.dart' as _i708;
import 'package:enjaz/features/profile/data/datasources/profile_remote_data_source.dart'
    as _i543;
import 'package:enjaz/features/profile/data/repositories/profile_repository_data.dart'
    as _i848;
import 'package:enjaz/features/profile/domain/repositories/profile_repository_domain.dart'
    as _i119;
import 'package:enjaz/features/profile/domain/use_cases/profile_use_case.dart'
    as _i178;
import 'package:enjaz/features/profile/sub/activity_history/data/datasources/activity_history_remote_data_source.dart'
    as _i395;
import 'package:enjaz/features/profile/sub/activity_history/data/repositories/activity_history_repository_data.dart'
    as _i100;
import 'package:enjaz/features/profile/sub/activity_history/domain/repositories/activity_history_repository_domain.dart'
    as _i166;
import 'package:enjaz/features/profile/sub/activity_history/domain/use_cases/activity_history_use_case.dart'
    as _i7;
import 'package:enjaz/features/profile/sub/profile_info/data/datasources/profile_info_remote_data_source.dart'
    as _i987;
import 'package:enjaz/features/profile/sub/profile_info/data/repositories/profile_info_repository_data.dart'
    as _i941;
import 'package:enjaz/features/profile/sub/profile_info/domain/repositories/profile_info_repository_domain.dart'
    as _i124;
import 'package:enjaz/features/profile/sub/profile_info/domain/use_cases/profile_info_use_case.dart'
    as _i923;
import 'package:enjaz/features/profile/sub/settings/data/datasources/settings_remote_data_source.dart'
    as _i563;
import 'package:enjaz/features/profile/sub/settings/data/repositories/settings_repository_data.dart'
    as _i521;
import 'package:enjaz/features/profile/sub/settings/domain/repositories/settings_repository_domain.dart'
    as _i826;
import 'package:enjaz/features/profile/sub/settings/domain/use_cases/settings_use_case.dart'
    as _i920;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initProfile({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i395.BaseActivityHistoryRemoteDataSource>(
      () => _i395.ActivityHistoryRemoteDataSource(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i543.BaseProfileRemoteDataSource>(
      () => _i543.ProfileRemoteDataSource(
        gh<_i708.UserService>(),
        gh<_i454.SupabaseClient>(),
      ),
    );
    gh.lazySingleton<_i563.BaseSettingsRemoteDataSource>(
      () => _i563.SettingsRemoteDataSource(
        gh<_i954.LocalKeysService>(),
        gh<_i454.SupabaseClient>(),
      ),
    );
    gh.lazySingleton<_i987.BaseProfileInfoRemoteDataSource>(
      () => _i987.ProfileInfoRemoteDataSource(
        gh<_i708.UserService>(),
        gh<_i454.SupabaseClient>(),
      ),
    );
    gh.lazySingleton<_i166.ActivityHistoryRepositoryDomain>(
      () => _i100.ActivityHistoryRepositoryData(
        gh<_i395.BaseActivityHistoryRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i119.ProfileRepositoryDomain>(
      () =>
          _i848.ProfileRepositoryData(gh<_i543.BaseProfileRemoteDataSource>()),
    );
    gh.lazySingleton<_i7.ActivityHistoryUseCase>(
      () => _i7.ActivityHistoryUseCase(
        gh<_i166.ActivityHistoryRepositoryDomain>(),
      ),
    );
    gh.lazySingleton<_i124.ProfileInfoRepositoryDomain>(
      () => _i941.ProfileInfoRepositoryData(
        gh<_i987.BaseProfileInfoRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i826.SettingsRepositoryDomain>(
      () => _i521.SettingsRepositoryData(
        gh<_i563.BaseSettingsRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i178.ProfileUseCase>(
      () => _i178.ProfileUseCase(gh<_i119.ProfileRepositoryDomain>()),
    );
    gh.lazySingleton<_i923.ProfileInfoUseCase>(
      () => _i923.ProfileInfoUseCase(gh<_i124.ProfileInfoRepositoryDomain>()),
    );
    gh.lazySingleton<_i920.SettingsUseCase>(
      () => _i920.SettingsUseCase(gh<_i826.SettingsRepositoryDomain>()),
    );
    return this;
  }
}
