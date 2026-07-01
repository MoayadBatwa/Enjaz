import 'package:enjaz/core/services/user_service.dart';
import 'package:enjaz/core/widgets/bottom_nav_bar.dart';
import 'package:enjaz/features/auth/forgot_password/presentation/pages/reset_password_screen.dart';
import 'package:enjaz/features/clubs/presentation/cubit/clubs_cubit.dart';
import 'package:enjaz/features/clubs/presentation/pages/clubs_feature_screen.dart';
import 'package:enjaz/features/clubs/sub/club_detail/presentation/pages/event_management_page.dart';
import 'package:enjaz/features/events/presentation/cubit/events_cubit.dart';
import 'package:enjaz/features/events/presentation/pages/events_feature_screen.dart';
import 'package:enjaz/features/profile/presentation/cubit/profile_cubit.dart';
import 'package:enjaz/features/profile/presentation/pages/profile_feature_screen.dart';
import 'package:enjaz/features/student_clubs/presentation/cubit/student_clubs_cubit.dart';
import 'package:enjaz/features/student_clubs/presentation/pages/student_clubs_feature_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../../admin_features/admin_panel/presentation/cubit/admin_panel_cubit.dart';
import '../../admin_features/admin_panel/presentation/pages/admin_panel_feature_screen.dart';
import 'routers.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/features/auth/login/presentation/pages/login_feature_screen.dart';
import 'package:enjaz/features/auth/login/presentation/cubit/login_cubit.dart';
import 'package:enjaz/features/auth/signup/presentation/pages/signup_feature_screen.dart';
import 'package:enjaz/features/auth/signup/presentation/cubit/signup_cubit.dart';
import 'package:enjaz/features/loading/presentation/pages/loading_feature_screen.dart';
import 'package:enjaz/features/loading/presentation/cubit/loading_cubit.dart';
import 'package:enjaz/features/auth/otp/presentation/pages/otp_feature_screen.dart';
import 'package:enjaz/features/auth/otp/presentation/cubit/otp_cubit.dart';
import 'package:enjaz/features/event_schedule/presentation/pages/event_schedule_feature_screen.dart';
import 'package:enjaz/features/event_schedule/presentation/cubit/event_schedule_cubit.dart';
import 'package:enjaz/features/auth/forgot_password/presentation/pages/forgot_password_feature_screen.dart';
import 'package:enjaz/features/auth/forgot_password/presentation/cubit/forgot_password_cubit.dart';
import 'package:enjaz/admin_features/universities/presentation/pages/universities_feature_screen.dart';
import 'package:enjaz/admin_features/universities/presentation/cubit/universities_cubit.dart';
import 'package:enjaz/admin_features/view_report/presentation/pages/view_report_feature_screen.dart';
import 'package:enjaz/admin_features/view_report/presentation/cubit/view_report_cubit.dart';
import 'package:enjaz/admin_features/manage_club/presentation/pages/manage_club_feature_screen.dart';
import 'package:enjaz/admin_features/manage_club/presentation/cubit/manage_club_cubit.dart';

class AppRouter {
  final user = GetIt.I<UserService>();

  static final GoRouter router = GoRouter(
    initialLocation: Routes.loading,
    redirect: (context, state) {
      final uri = state.uri;
      if (uri.host.contains('reset-password')) {
        return context.push(Routes.resetPassword).then((value) => Routes.login);
      }
      return null;
    },
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return BottomNavBar(navigationShell: navigationShell);
        },

        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.profile,
                builder: (context, state) {
                  return BlocProvider(
                    create: (context) => ProfileCubit(GetIt.I.get()),
                    child: const ProfileFeatureScreen(),
                  );
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.studentClubs,
                builder: (context, state) {
                  final user = GetIt.I<UserService>();
                  if (user.isAdmin) {
                    return BlocProvider(
                      create: (context) {
                        return AdminPanelCubit(GetIt.I.get());
                      },
                      child: const AdminPanelFeatureScreen(),
                    );
                  }
                  return BlocProvider(
                    create: (context) {
                      return StudentClubsCubit(GetIt.I.get());
                    },
                    child: const StudentClubsFeatureScreen(),
                  );
                },
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.clubs,
                builder: (context, state) => BlocProvider(
                  create: (context) => ClubCubit(GetIt.I.get()),
                  child: const ClubsFeatureScreen(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.events,
                builder: (context, state) => BlocProvider(
                  create: (context) =>
                      EventsCubit(GetIt.I.get(), GetIt.I.get()),
                  child: const EventsFeatureScreen(),
                ),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: Routes.splash,
        builder: (context, state) => BlocProvider(
          create: (context) => LoginCubit(GetIt.I.get()),
          child: const LoginFeatureScreen(),
        ), //
      ),

      GoRoute(
        path: Routes.login,
        builder: (context, state) => BlocProvider(
          create: (context) => LoginCubit(GetIt.I.get()),
          child: const LoginFeatureScreen(),
        ),
      ),

      GoRoute(
        path: Routes.signup,
        builder: (context, state) => BlocProvider(
          create: (context) => SignupCubit(GetIt.I.get()),
          child: const SignupFeatureScreen(),
        ),
      ),

      GoRoute(
        path: Routes.loading,
        builder: (context, state) => BlocProvider(
          create: (context) => LoadingCubit(GetIt.I.get()),
          child: const LoadingFeatureScreen(),
        ),
      ),

      GoRoute(
        path: Routes.profile,
        builder: (context, state) => BlocProvider(
          create: (context) => ProfileCubit(GetIt.I.get()),
          child: const ProfileFeatureScreen(),
        ),
      ),

      GoRoute(
        path: Routes.otp,
        builder: (context, state) {
          final data = state.extra as Map;
          return BlocProvider(
            create: (context) => OtpCubit(GetIt.I.get()),
            child: OtpFeatureScreen(
              userData: data['userData'],
              userEmail: data['email'],
            ),
          );
        },
      ),

      GoRoute(
        path: Routes.eventSchedule,
        builder: (context, state) {
          final clubId = state.extra as String?;
          return BlocProvider(
            create: (context) => EventScheduleCubit(GetIt.I.get()),
            child: EventScheduleFeatureScreen(clubId: clubId),
          );
        },
      ),

      GoRoute(
        path: Routes.forgotPassword,
        builder: (context, state) => BlocProvider(
          create: (context) => ForgotPasswordCubit(GetIt.I.get()),
          child: const ForgotPasswordFeatureScreen(),
        ),
      ),

      GoRoute(
        path: Routes.resetPassword,
        builder: (context, state) => BlocProvider(
          create: (context) => ForgotPasswordCubit(GetIt.I.get()),
          child: const ResetPasswordScreen(),
        ),
      ),

      GoRoute(
        path: Routes.adminPanel,
        builder: (context, state) => BlocProvider(
          create: (context) => AdminPanelCubit(GetIt.I.get()),
          child: const AdminPanelFeatureScreen(),
        ),
      ),

      GoRoute(
        path: Routes.universities,
        builder: (context, state) => BlocProvider(
          create: (context) => UniversitiesCubit(GetIt.I.get()),
          child: const UniversitiesFeatureScreen(),
        ),
      ),

      GoRoute(
        path: Routes.viewReport,
        builder: (context, state) {
          final clubId = state.extra as String?;
          return BlocProvider(
            create: (context) => ViewReportCubit(GetIt.I.get()),
            child: ViewReportFeatureScreen(clubId: clubId),
          );
        },
      ),

      GoRoute(
        path: Routes.eventManagement,
        builder: (context, state) {
          final clubId = state.extra as String;
          return EventManagementPage(clubId: clubId);
        },
      ),
      GoRoute(
        path: Routes.manageClub,
        builder: (context, state) => BlocProvider(
          create: (context) => ManageClubCubit(GetIt.I.get()),
          child: const ManageClubFeatureScreen(),
        ),
      ),
    ],

    errorBuilder: (context, state) =>
        Scaffold(body: Center(child: Text('Page not found: ${state.uri}'))),
  );
}
