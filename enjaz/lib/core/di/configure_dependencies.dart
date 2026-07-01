import 'package:enjaz/admin_features/admin_panel/di/admin_panel_di.dart';
import 'package:enjaz/core/di/configure_dependencies.config.dart';
import 'package:enjaz/features/auth/forgot_password/di/forgot_password_di.dart';
import 'package:enjaz/features/auth/login/di/login_di.dart';
import 'package:enjaz/features/auth/otp/di/otp_di.dart';
import 'package:enjaz/features/auth/signup/di/signup_di.dart';
import 'package:enjaz/features/clubs/di/clubs_di.dart';
import 'package:enjaz/features/events/di/events_di.dart';
import 'package:enjaz/features/loading/di/loading_di.dart';
import 'package:enjaz/features/profile/di/profile_di.dart';
import 'package:enjaz/features/student_clubs/di/student_clubs_di.dart';
import 'package:enjaz/features/sub/event_details/di/event_details_di.dart';
import 'package:enjaz/features/sub/filter/di/filter_di.dart';
import 'package:enjaz/features/sub/search/di/search_di.dart';
import 'package:enjaz/admin_features/universities/di/universities_di.dart';
import 'package:enjaz/features/sub/signout/di/signout_di.dart';
import 'package:enjaz/features/event_schedule/di/event_schedule_di.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/features/sub/assign_supervisor/di/assign_supervisor_di.dart';
import 'package:enjaz/features/sub/assign_leader/di/assign_leader_di.dart';
import 'package:enjaz/features/clubs/sub/club_events/sub/create_event/di/create_event_di.dart';
import 'package:enjaz/features/clubs/sub/club_events/sub/update_event/di/update_event_di.dart';
import 'package:enjaz/features/sub/event_report/di/event_report_di.dart';
import 'package:enjaz/admin_features/view_report/di/view_report_di.dart';
import 'package:enjaz/admin_features/manage_club/di/manage_club_di.dart';
import 'package:enjaz/features/sub/create_club/di/create_club_di.dart';
import 'package:enjaz/admin_features/admin_panel/sub/analytical_dashboard/di/analytical_dashboard_di.dart';

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
  generateForDir: ['lib/core'],
)
Future<void> configureDependencies() async {
  final getIt = GetIt.instance;
  getIt.init();
  configureLogin(getIt);
  configureStudentClubs(getIt);
  configureClubs(getIt);
  configureEvents(getIt);
  configureSignup(getIt);
  configureLoading(getIt);
  configureSignoutSub(getIt);
  configureProfile(getIt);
  configureFilterSub(getIt);
  configureEventDetailsSub(getIt);
  configureOtp(getIt);
  configureEventSchedule(getIt);
  configureForgotPassword(getIt);
  configureSearchSub(getIt);
  configureAdminPanel(getIt);
  configureUniversities(getIt);
  configureAssignSupervisorSub(getIt);
  configureAssignLeaderSub(getIt);
  configureCreateEventSub(getIt);
  configureUpdateEventSub(getIt);
  configureEventReportSub(getIt);
  configureViewReport(getIt);
  configureManageClub(getIt);
  configureCreateClubSub(getIt);
  configureAnalyticalDashboardSub(getIt);
}
