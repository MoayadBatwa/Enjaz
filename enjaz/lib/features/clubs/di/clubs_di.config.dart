// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:enjaz/core/services/local_keys_service.dart' as _i954;
import 'package:enjaz/features/clubs/data/datasources/clubs_remote_data_source.dart'
    as _i415;
import 'package:enjaz/features/clubs/data/repositories/clubs_repository_data.dart'
    as _i218;
import 'package:enjaz/features/clubs/domain/repositories/clubs_repository_domain.dart'
    as _i983;
import 'package:enjaz/features/clubs/domain/use_cases/clubs_use_case.dart'
    as _i521;
import 'package:enjaz/features/clubs/sub/archived_club_events/data/datasources/archived_club_events_remote_data_source.dart'
    as _i413;
import 'package:enjaz/features/clubs/sub/archived_club_events/data/repositories/archived_club_events_repository_data.dart'
    as _i1047;
import 'package:enjaz/features/clubs/sub/archived_club_events/domain/repositories/archived_club_events_repository_domain.dart'
    as _i893;
import 'package:enjaz/features/clubs/sub/archived_club_events/domain/use_cases/archived_club_events_use_case.dart'
    as _i929;
import 'package:enjaz/features/clubs/sub/club_detail/data/datasources/club_detail_remote_data_source.dart'
    as _i147;
import 'package:enjaz/features/clubs/sub/club_detail/data/repositories/club_detail_repository_data.dart'
    as _i95;
import 'package:enjaz/features/clubs/sub/club_detail/domain/repositories/club_detail_repository_domain.dart'
    as _i356;
import 'package:enjaz/features/clubs/sub/club_detail/domain/use_cases/club_detail_use_case.dart'
    as _i992;
import 'package:enjaz/features/clubs/sub/club_edit/data/datasources/club_edit_remote_data_source.dart'
    as _i784;
import 'package:enjaz/features/clubs/sub/club_edit/data/repositories/club_edit_repository_data.dart'
    as _i880;
import 'package:enjaz/features/clubs/sub/club_edit/domain/repositories/club_edit_repository_domain.dart'
    as _i46;
import 'package:enjaz/features/clubs/sub/club_edit/domain/use_cases/club_edit_use_case.dart'
    as _i1033;
import 'package:enjaz/features/clubs/sub/club_events/data/datasources/club_events_remote_data_source.dart'
    as _i116;
import 'package:enjaz/features/clubs/sub/club_events/data/repositories/club_events_repository_data.dart'
    as _i762;
import 'package:enjaz/features/clubs/sub/club_events/domain/repositories/club_events_repository_domain.dart'
    as _i384;
import 'package:enjaz/features/clubs/sub/club_events/domain/use_cases/club_events_use_case.dart'
    as _i34;
import 'package:enjaz/features/clubs/sub/club_events/sub/create_event/data/datasources/create_event_remote_data_source.dart'
    as _i739;
import 'package:enjaz/features/clubs/sub/club_events/sub/create_event/data/repositories/create_event_repository_data.dart'
    as _i1017;
import 'package:enjaz/features/clubs/sub/club_events/sub/create_event/domain/repositories/create_event_repository_domain.dart'
    as _i780;
import 'package:enjaz/features/clubs/sub/club_events/sub/create_event/domain/use_cases/create_event_use_case.dart'
    as _i545;
import 'package:enjaz/features/clubs/sub/club_events/sub/update_event/data/datasources/update_event_remote_data_source.dart'
    as _i278;
import 'package:enjaz/features/clubs/sub/club_events/sub/update_event/data/repositories/update_event_repository_data.dart'
    as _i490;
import 'package:enjaz/features/clubs/sub/club_events/sub/update_event/domain/repositories/update_event_repository_domain.dart'
    as _i390;
import 'package:enjaz/features/clubs/sub/club_events/sub/update_event/domain/use_cases/update_event_use_case.dart'
    as _i512;
import 'package:enjaz/features/clubs/sub/club_join_requests/data/datasources/club_join_requests_remote_data_source.dart'
    as _i828;
import 'package:enjaz/features/clubs/sub/club_join_requests/data/repositories/club_join_requests_repository_data.dart'
    as _i537;
import 'package:enjaz/features/clubs/sub/club_join_requests/domain/repositories/club_join_requests_repository_domain.dart'
    as _i651;
import 'package:enjaz/features/clubs/sub/club_join_requests/domain/use_cases/club_join_requests_use_case.dart'
    as _i297;
import 'package:enjaz/features/clubs/sub/club_members/data/datasources/club_members_remote_data_source.dart'
    as _i912;
import 'package:enjaz/features/clubs/sub/club_members/data/repositories/club_members_repository_data.dart'
    as _i218;
import 'package:enjaz/features/clubs/sub/club_members/domain/repositories/club_members_repository_domain.dart'
    as _i328;
import 'package:enjaz/features/clubs/sub/club_members/domain/use_cases/club_members_use_case.dart'
    as _i603;
import 'package:enjaz/features/clubs/sub/delete_member/data/datasources/delete_member_remote_data_source.dart'
    as _i224;
import 'package:enjaz/features/clubs/sub/delete_member/data/repositories/delete_member_repository_data.dart'
    as _i58;
import 'package:enjaz/features/clubs/sub/delete_member/domain/repositories/delete_member_repository_domain.dart'
    as _i259;
import 'package:enjaz/features/clubs/sub/delete_member/domain/use_cases/delete_member_use_case.dart'
    as _i423;
import 'package:enjaz/features/clubs/sub/join_club/data/datasources/join_club_remote_data_source.dart'
    as _i728;
import 'package:enjaz/features/clubs/sub/join_club/data/repositories/join_club_repository_data.dart'
    as _i693;
import 'package:enjaz/features/clubs/sub/join_club/domain/repositories/join_club_repository_domain.dart'
    as _i278;
import 'package:enjaz/features/clubs/sub/join_club/domain/use_cases/join_club_use_case.dart'
    as _i568;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initClubs({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i413.BaseArchivedClubEventsRemoteDataSource>(
      () =>
          _i413.ArchivedClubEventsRemoteDataSource(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i278.BaseUpdateEventRemoteDataSource>(
      () => _i278.UpdateEventRemoteDataSource(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i828.BaseClubJoinRequestsRemoteDataSource>(
      () => _i828.ClubJoinRequestsRemoteDataSource(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i116.BaseClubEventsRemoteDataSource>(
      () => _i116.ClubEventsRemoteDataSource(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i784.BaseClubEditRemoteDataSource>(
      () => _i784.ClubEditRemoteDataSource(
        gh<_i954.LocalKeysService>(),
        gh<_i454.SupabaseClient>(),
      ),
    );
    gh.lazySingleton<_i739.BaseCreateEventRemoteDataSource>(
      () => _i739.CreateEventRemoteDataSource(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i728.BaseJoinClubRemoteDataSource>(
      () => _i728.JoinClubRemoteDataSource(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i415.BaseClubsRemoteDataSource>(
      () => _i415.ClubsRemoteDataSource(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i224.BaseDeleteMemberRemoteDataSource>(
      () => _i224.DeleteMemberRemoteDataSource(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i912.BaseClubMembersRemoteDataSource>(
      () => _i912.ClubMembersRemoteDataSource(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i983.ClubRepositoryDomain>(
      () => _i218.ClubsRepositoryData(gh<_i415.BaseClubsRemoteDataSource>()),
    );
    gh.lazySingleton<_i147.BaseClubDetailRemoteDataSource>(
      () => _i147.ClubDetailRemoteDataSource(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i259.DeleteMemberRepositoryDomain>(
      () => _i58.DeleteMemberRepositoryData(
        gh<_i224.BaseDeleteMemberRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i46.ClubEditRepositoryDomain>(
      () => _i880.ClubEditRepositoryData(
        gh<_i784.BaseClubEditRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i423.DeleteMemberUseCase>(
      () => _i423.DeleteMemberUseCase(gh<_i259.DeleteMemberRepositoryDomain>()),
    );
    gh.lazySingleton<_i356.ClubDetailRepositoryDomain>(
      () => _i95.ClubDetailRepositoryData(
        gh<_i147.BaseClubDetailRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i328.ClubMembersRepositoryDomain>(
      () => _i218.ClubMembersRepositoryData(
        gh<_i912.BaseClubMembersRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i384.ClubEventsRepositoryDomain>(
      () => _i762.ClubEventsRepositoryData(
        gh<_i116.BaseClubEventsRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i1033.ClubEditUseCase>(
      () => _i1033.ClubEditUseCase(gh<_i46.ClubEditRepositoryDomain>()),
    );
    gh.lazySingleton<_i603.ClubMembersUseCase>(
      () => _i603.ClubMembersUseCase(gh<_i328.ClubMembersRepositoryDomain>()),
    );
    gh.lazySingleton<_i780.CreateEventRepositoryDomain>(
      () => _i1017.CreateEventRepositoryData(
        gh<_i739.BaseCreateEventRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i34.ClubEventsUseCase>(
      () => _i34.ClubEventsUseCase(gh<_i384.ClubEventsRepositoryDomain>()),
    );
    gh.lazySingleton<_i390.UpdateEventRepositoryDomain>(
      () => _i490.UpdateEventRepositoryData(
        gh<_i278.BaseUpdateEventRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i651.ClubJoinRequestsRepositoryDomain>(
      () => _i537.ClubJoinRequestsRepositoryData(
        gh<_i828.BaseClubJoinRequestsRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i893.ArchivedClubEventsRepositoryDomain>(
      () => _i1047.ArchivedClubEventsRepositoryData(
        gh<_i413.BaseArchivedClubEventsRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i297.ClubJoinRequestsUseCase>(
      () => _i297.ClubJoinRequestsUseCase(
        gh<_i651.ClubJoinRequestsRepositoryDomain>(),
      ),
    );
    gh.lazySingleton<_i278.JoinClubRepositoryDomain>(
      () => _i693.JoinClubRepositoryData(
        gh<_i728.BaseJoinClubRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i929.ArchivedClubEventsUseCase>(
      () => _i929.ArchivedClubEventsUseCase(
        gh<_i893.ArchivedClubEventsRepositoryDomain>(),
      ),
    );
    gh.lazySingleton<_i512.UpdateEventUseCase>(
      () => _i512.UpdateEventUseCase(gh<_i390.UpdateEventRepositoryDomain>()),
    );
    gh.lazySingleton<_i545.CreateEventUseCase>(
      () => _i545.CreateEventUseCase(gh<_i780.CreateEventRepositoryDomain>()),
    );
    gh.lazySingleton<_i521.ClubUseCase>(
      () => _i521.ClubUseCase(gh<_i983.ClubRepositoryDomain>()),
    );
    gh.lazySingleton<_i992.ClubDetailUseCase>(
      () => _i992.ClubDetailUseCase(gh<_i356.ClubDetailRepositoryDomain>()),
    );
    gh.lazySingleton<_i568.JoinClubUseCase>(
      () => _i568.JoinClubUseCase(gh<_i278.JoinClubRepositoryDomain>()),
    );
    return this;
  }
}
