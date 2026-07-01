import 'dart:io';

import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/admin_features/view_report/domain/entities/view_report_entity.dart';

abstract class ViewReportRepositoryDomain {
    Future<Result<List<ViewReportEntity>, Failure>> getReports(String? clubId);
    Future<Result<File, Failure>> getViewReport({required String reportId,required String file});
    Future<Result<void, Failure>> downloadPdf({required String url});
    
}
