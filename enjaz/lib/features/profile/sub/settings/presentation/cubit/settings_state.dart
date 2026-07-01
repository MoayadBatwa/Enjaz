import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class SettingsState extends Equatable {
  const SettingsState();

  @override
  List<Object?> get props => [];
}

class SettingsInitialState extends SettingsState {
  final ThemeMode themeMode;

  const SettingsInitialState({required this.themeMode});

  @override
  List<Object?> get props => [themeMode];
}

class SettingsSuccessState extends SettingsState {}

class SettingsErrorState extends SettingsState {
  final String message;
  const SettingsErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
