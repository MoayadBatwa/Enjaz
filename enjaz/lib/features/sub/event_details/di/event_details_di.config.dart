// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:enjaz/core/services/user_service.dart' as _i708;
import 'package:enjaz/features/sub/event_details/data/datasources/event_details_remote_data_source.dart'
    as _i461;
import 'package:enjaz/features/sub/event_details/data/repositories/event_details_repository_data.dart'
    as _i1065;
import 'package:enjaz/features/sub/event_details/domain/repositories/event_details_repository_domain.dart'
    as _i426;
import 'package:enjaz/features/sub/event_details/domain/use_cases/event_details_use_case.dart'
    as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initEventDetailsSub({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i461.BaseEventDetailsRemoteDataSource>(
      () => _i461.EventDetailsRemoteDataSource(
        gh<_i454.SupabaseClient>(),
        gh<_i708.UserService>(),
      ),
    );
    gh.lazySingleton<_i426.EventDetailsRepositoryDomain>(
      () => _i1065.EventDetailsRepositoryData(
        gh<_i461.BaseEventDetailsRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i59.EventDetailsUseCase>(
      () => _i59.EventDetailsUseCase(gh<_i426.EventDetailsRepositoryDomain>()),
    );
    return this;
  }
}
