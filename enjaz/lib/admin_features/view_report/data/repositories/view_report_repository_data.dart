import 'dart:io';
import 'package:enjaz/admin_features/view_report/data/models/view_report_model.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/admin_features/view_report/domain/entities/view_report_entity.dart';
import 'package:enjaz/admin_features/view_report/data/datasources/view_report_remote_data_source.dart';
import 'package:enjaz/admin_features/view_report/domain/repositories/view_report_repository_domain.dart';

@LazySingleton(as: ViewReportRepositoryDomain)
class ViewReportRepositoryData implements ViewReportRepositoryDomain {
  final BaseViewReportRemoteDataSource remoteDataSource;
  ViewReportRepositoryData(this.remoteDataSource);

  @override
  Future<Result<List<ViewReportEntity>, Failure>> getReports(
    String? clubId,
  ) async {
    try {
      final response = await remoteDataSource.getReports(clubId);
      return Success(response.map((reports) => reports.toEntity()).toList());
    } on Failure catch (error) {
      return Error(error);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }

  @override
  Future<Result<File, Failure>> getViewReport({
    required String reportId,
    required String file,
  }) async {
    try {
      final response = await remoteDataSource.getViewReport(
        reportId: reportId,
        file: file,
      );
      return Success(response);
    } on Failure catch (error) {
      return Error(error);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }

  @override
  Future<Result<void, Failure>> downloadPdf({required String url}) async {
    try {
      final response = await remoteDataSource.downloadPdf(url: url);
      return Success(response);
    } on Failure catch (error) {
      return Error(error);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
