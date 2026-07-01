import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FilePickerService {
  Future<File?> pickFile() async {
    FilePickerResult? result = await FilePicker.pickFiles(
      type: .custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null) {
      File file = File(result.files.single.path!);
      return file;
    } else {
      return null;
    }
  }
}
