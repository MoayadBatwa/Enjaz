import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/features/sub/event_report/domain/use_cases/event_report_use_case.dart';
import 'package:enjaz/features/sub/event_report/presentation/cubit/event_report_state.dart';

class EventReportCubit extends Cubit<EventReportState> {
  final EventReportUseCase _eventReportUseCase;
  EventReportCubit(this._eventReportUseCase) : super(EventReportInitialState());

  File? file;

  Future<void> postEventReportMethod({
    required String attendance,
    required String challenge,
    required String recommend,
    required File file,
    required String eventId,
  }) async {
    final result = await _eventReportUseCase.postEventReport(
      attendance: attendance,
      challenge: challenge,
      file: file,
      recommend: recommend,
      eventId: eventId,
    );
    result.when(
      (success) {
        emit(EventReportSuccessState());
      },
      (whenError) {
        emit(EventReportErrorState(message: whenError.message));
      },
    );
  }

  Future<void> getFilePickerMethod() async {
    final result = await _eventReportUseCase.getFilePickerReport();
    result.when(
      (success) {
        file = success;
        emit(EventReportInitialState());
      },
      (whenError) {
        //here is when error result
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
