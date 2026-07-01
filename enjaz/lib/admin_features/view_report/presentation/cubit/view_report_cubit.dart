import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/admin_features/view_report/domain/use_cases/view_report_use_case.dart';
import 'package:enjaz/admin_features/view_report/presentation/cubit/view_report_state.dart';

class ViewReportCubit extends Cubit<ViewReportState> {
  final ViewReportUseCase _viewReportUseCase;

  ViewReportCubit(this._viewReportUseCase) : super(ViewReportInitialState());

  Future<void> getReportsMethod(String? clubId) async {
    emit(ViewReportLoadingState());
    final result = await _viewReportUseCase.getReports(clubId);
    result.when(
      (success) {
        emit(GetReportSuccessState(report: success));
      },
      (whenError) {
        emit(ViewReportErrorState(message: whenError.message));
      },
    );
  }

  Future<void> getViewReportMethod({
    required String reportId,
    required String file,
  }) async {
    emit(ViewReportLoadingState());
    final result = await _viewReportUseCase.getViewReport(
      reportId: reportId,
      file: file,
    );
    result.when(
      (success) {
        emit(ViewReportSuccessState(report: success));
      },
      (whenError) {
        emit(ViewReportErrorState(message: whenError.message));
      },
    );
  }

  Future<void> getDownloadPdfMethod({required String url}) async {
    emit(ViewReportLoadingState());
    final result = await _viewReportUseCase.downloadPdf(url: url);
    result.when(
      (success) {
        emit(ViewReportDownloadPdfSuccessState());
      },
      (whenError) {
        emit(ViewReportErrorState(message: whenError.message));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
