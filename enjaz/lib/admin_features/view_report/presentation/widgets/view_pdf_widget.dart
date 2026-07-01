import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class ViewPdfWidget extends StatelessWidget {
  const ViewPdfWidget({super.key, required this.path});
  final String path;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PDFView(filePath: path),
    );
  }
}
