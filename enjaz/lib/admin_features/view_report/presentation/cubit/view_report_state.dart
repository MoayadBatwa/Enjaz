import 'dart:io';

import 'package:enjaz/admin_features/view_report/domain/entities/view_report_entity.dart';
import 'package:equatable/equatable.dart';

abstract class ViewReportState extends Equatable {
  const ViewReportState();

  @override
  List<Object?> get props => [];
}

class ViewReportInitialState extends ViewReportState {}

class ViewReportLoadingState extends ViewReportState {}
class ViewReportDownloadPdfSuccessState extends ViewReportState {}

class GetReportSuccessState extends ViewReportState {
  final List<ViewReportEntity> report;

  const GetReportSuccessState({required this.report});
  @override
  List<Object?> get props => [report];
}

class ViewReportSuccessState extends ViewReportState {
  final File report;

  const ViewReportSuccessState({required this.report});
  @override
  List<Object?> get props => [report];
}

class ViewReportErrorState extends ViewReportState {
  final String message;
  const ViewReportErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
