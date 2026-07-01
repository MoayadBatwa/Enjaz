import 'dart:io';

import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';

abstract class EventReportRepositoryDomain {
    Future<Result<void, Failure>> postEventReport({
    required String attendance,
    required String challenge,
    required String recommend,
    required File file,
    required String eventId,
  });
    Future<Result<File?, Failure>> getFilePickerReport();
}
