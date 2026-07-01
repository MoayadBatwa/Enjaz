import 'package:enjaz/admin_features/admin_panel/sub/analytical_dashboard/domain/entities/university_stat_entity.dart';
import 'package:equatable/equatable.dart';

abstract class AnalyticalDashboardState extends Equatable {
  const AnalyticalDashboardState();

  @override
  List<Object?> get props => [];
}

class AnalyticalDashboardInitialState extends AnalyticalDashboardState {}

class AnalyticalDashboardLoadingState extends AnalyticalDashboardState {}

class AnalyticalDashboardSuccessState extends AnalyticalDashboardState {
  final List<UniversityStatEntity> universities;

  const AnalyticalDashboardSuccessState({required this.universities});

  @override
  List<Object?> get props => [universities];
}

class AnalyticalDashboardErrorState extends AnalyticalDashboardState {
  final String message;
  const AnalyticalDashboardErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}

