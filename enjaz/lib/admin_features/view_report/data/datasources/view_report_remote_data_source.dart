import 'dart:io';
import 'package:dio/dio.dart';
import 'package:enjaz/core/network/dio_client.dart';
import 'package:file_picker/file_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:enjaz/admin_features/view_report/data/models/view_report_model.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';

abstract class BaseViewReportRemoteDataSource {
  Future<List<ViewReportModel>> getReports(String? clubId);
  Future<File> getViewReport({required String reportId, required String file});
  Future<void> downloadPdf({required String url});
}

@LazySingleton(as: BaseViewReportRemoteDataSource)
class ViewReportRemoteDataSource implements BaseViewReportRemoteDataSource {
  final SupabaseClient _supabase;
  final DioClient _dio;

  ViewReportRemoteDataSource(this._dio, this._supabase);

  @override
  Future<List<ViewReportModel>> getReports(String? clubId) async {
    try {
      if (clubId != null) {
        final planIds = await _supabase
            .from('club_plans')
            .select('id , events(id)')
            .eq('club_id', clubId);

        if (planIds.isEmpty) return [];

        final eventsIdsFilter = planIds
            .expand((plan) => plan['events'] as List)
            .map((event) => event['id'])
            .toList();

        if (eventsIdsFilter.isEmpty) return [];

        final reports = await _supabase
            .from('event_report_with_event_name')
            .select()
            .inFilter('event_id', eventsIdsFilter);

        return reports
            .map((report) => ViewReportModel.fromJson(report))
            .toList();
      }

      if (clubId == null) {
        return _supabase.from('event_report_with_event_name').select().then((
          reports,
        ) {
          return reports
              .map((report) => ViewReportModel.fromJson(report))
              .toList();
        });
      }
      return [];
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }

  @override
  Future<File> getViewReport({
    required String reportId,
    required String file,
  }) async {
    try {
      final dir = await getTemporaryDirectory();
      final file2 = File('${dir.path}/$reportId.pdf');

      if (!await file2.exists()) {
        final response = await _dio.get(
          file,
          options: Options(responseType: ResponseType.bytes),
        );
        await file2.writeAsBytes(response.data);
      }

      return file2;
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }

  @override
  Future<void> downloadPdf({required String url}) async {
    try {
      String? dir = await FilePicker.getDirectoryPath();

      if (dir == null)
        throw FailureExceptions.getException(
          'تم إلغاء اختيار المجلد',
        ); // user cancelled

      // 2. Download file
      final response = await _dio.get(
        url,
        options: Options(responseType: ResponseType.bytes),
      );

      // 3. Save file
      final file = File('$dir/report.pdf');

      await file.writeAsBytes(response.data);
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
