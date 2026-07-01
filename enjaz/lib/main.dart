import 'package:easy_localization/easy_localization.dart';
import 'package:enjaz/features/profile/sub/settings/presentation/cubit/settings_cubit.dart';
import 'package:enjaz/features/profile/sub/settings/presentation/cubit/settings_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sizer/sizer.dart';
import 'core/setup.dart';
import 'core/theme/app_theme.dart';
import 'core/di/configure_dependencies.dart';
import 'core/navigation/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();
  await setup();
  await configureDependencies();
  
  // Lock app orientation to portrait mode only
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: 'assets/translations',
      fallbackLocale: Locale('en'),
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, screenType) {
        return BlocProvider(
          create: (context) => SettingsCubit(GetIt.I.get()),
          child: BlocBuilder<SettingsCubit, SettingsState>(
            builder: (context, state) {
              return MaterialApp.router(
                scrollBehavior: MaterialScrollBehavior().copyWith(
                  physics: const BouncingScrollPhysics(),
                ),
                routerConfig: AppRouter.router,
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: context.locale,
                themeMode: state is SettingsInitialState
                    ? state.themeMode
                    : ThemeMode.light,
                theme: AppTheme.lightTheme,
                darkTheme: AppTheme.darkTheme,
                debugShowCheckedModeBanner: false,
                builder: (context, child) {
                  return Directionality(textDirection: .rtl, child: child!);
                },
              );
            },
          ),
        );
      },
    );
  }
}
