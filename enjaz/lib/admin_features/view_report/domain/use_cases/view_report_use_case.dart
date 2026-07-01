import 'dart:io';

import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/admin_features/view_report/domain/entities/view_report_entity.dart';
import 'package:enjaz/admin_features/view_report/domain/repositories/view_report_repository_domain.dart';


@lazySingleton
class ViewReportUseCase {
  final ViewReportRepositoryDomain _repositoryData;

  ViewReportUseCase(this._repositoryData);

   Future<Result<List<ViewReportEntity>, Failure>> getReports(String? clubId) async {
    return _repositoryData.getReports(clubId);
  }
   Future<Result<File, Failure>> getViewReport({required String reportId,required String file}) async {
    return _repositoryData.getViewReport(reportId: reportId,file: file);
  }
   Future<Result<void, Failure>> downloadPdf({required String url}) async {
    return _repositoryData.downloadPdf(url: url);
  }
}
