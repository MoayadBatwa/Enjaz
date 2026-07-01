import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/features/profile/sub/settings/domain/use_cases/settings_use_case.dart';
import 'package:enjaz/features/profile/sub/settings/presentation/cubit/settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  final SettingsUseCase _settingsUseCase;

  SettingsCubit(this._settingsUseCase)
    : super(const SettingsInitialState(themeMode: ThemeMode.light));
  void changeTheme(bool isLight) {
    emit(
      SettingsInitialState(
        themeMode: isLight ? ThemeMode.light : ThemeMode.dark,
      ),
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
