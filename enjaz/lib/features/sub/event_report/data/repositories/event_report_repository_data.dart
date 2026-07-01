
import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/sub/event_report/data/datasources/event_report_remote_data_source.dart';
import 'package:enjaz/features/sub/event_report/domain/repositories/event_report_repository_domain.dart';

@LazySingleton(as: EventReportRepositoryDomain)
class EventReportRepositoryData implements EventReportRepositoryDomain{
  final BaseEventReportRemoteDataSource remoteDataSource;


  EventReportRepositoryData(this.remoteDataSource);

@override
  Future<Result<void, Failure>> postEventReport({
    required String attendance,
    required String challenge,
    required String recommend,
    required File file,
    required String eventId,
  }) async {
    try {
      final response = await remoteDataSource.postEventReport(attendance: attendance,
      challenge: challenge,
      file: file,
      recommend: recommend,
      eventId:eventId,);
      return Success(response);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
  
  @override
  Future<Result<File?, Failure>> getFilePickerReport()async {
    try {
      final response = await remoteDataSource.getFilePickerReport();
      return Success(response);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
