import 'dart:io';
import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/sub/event_report/domain/repositories/event_report_repository_domain.dart';

@lazySingleton
class EventReportUseCase {
  final EventReportRepositoryDomain _repositoryData;

  EventReportUseCase(this._repositoryData);

  Future<Result<void, Failure>> postEventReport({
    required String attendance,
    required String challenge,
    required String recommend,
    required File file,
    required String eventId,
  }) async {
    return _repositoryData.postEventReport(
      attendance: attendance,
      challenge: challenge,
      file: file,
      recommend: recommend,
      eventId: eventId,
    );
  }

  Future<Result<File?, Failure>> getFilePickerReport() async {
    return _repositoryData.getFilePickerReport();
  }
}
