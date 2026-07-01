import 'dart:io';

import 'package:enjaz/core/services/file_picker_service.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';

abstract class BaseEventReportRemoteDataSource {
  Future<void> postEventReport({
    required String attendance,
    required String challenge,
    required String recommend,
    required File file,
    required String eventId,
  });
  Future<File?> getFilePickerReport();
}

@LazySingleton(as: BaseEventReportRemoteDataSource)
class EventReportRemoteDataSource implements BaseEventReportRemoteDataSource {
  final SupabaseClient _supabase;
  final FilePickerService _filePickerService;

  EventReportRemoteDataSource(this._filePickerService, this._supabase);

  @override
  Future<void> postEventReport({
    required String attendance,
    required String challenge,
    required String recommend,
    required File file,
    required String eventId,
  }) async {
    try {
      final fileName =
          'event_reports/${DateTime.now().toIso8601String()}event_report.pdf';

      await _supabase.storage.from('reports').upload(fileName, file);

      final url = _supabase.storage.from('reports').getPublicUrl(fileName);

      await _supabase.from('event_report').insert({
        'attendance': attendance,
        'challenges': challenge,
        'recommendations': recommend,
        'event_id': eventId,
        'file': url,
      });
      
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }

  @override
  Future<File?> getFilePickerReport() async {
    try {
      return await _filePickerService.pickFile();
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
