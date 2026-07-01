// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:enjaz/features/student_clubs/data/datasources/student_clubs_remote_data_source.dart'
    as _i366;
import 'package:enjaz/features/student_clubs/data/repositories/student_clubs_repository_data.dart'
    as _i344;
import 'package:enjaz/features/student_clubs/domain/repositories/student_clubs_repository_domain.dart'
    as _i890;
import 'package:enjaz/features/student_clubs/domain/use_cases/student_clubs_use_case.dart'
    as _i152;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initStudentClubs({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i366.BaseStudentClubsRemoteDataSource>(
      () => _i366.StudentClubsRemoteDataSource(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i890.StudentClubsRepositoryDomain>(
      () => _i344.StudentClubsRepositoryData(
        gh<_i366.BaseStudentClubsRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i152.StudentClubsUseCase>(
      () => _i152.StudentClubsUseCase(gh<_i890.StudentClubsRepositoryDomain>()),
    );
    return this;
  }
}
