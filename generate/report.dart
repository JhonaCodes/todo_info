import 'dart:developer';

import 'package:todo_info/src/core/file_managment.dart';
import 'package:todo_info/src/file_generator/generate_html.dart';
import 'package:todo_info/src/file_generator/generate_md.dart';

void main(List<String> arguments) async {
  if (arguments.length != 2) {
    log('Usage: dart generate_report.dart <file_name> <report_type>');
    return;
  }

  final fileName = arguments[0];
  final reportType = arguments[1];

  if (reportType != 'md' && reportType != 'html') {
    log('Invalid report type. Please specify "md" for Markdown or "html" for HTML.');
    return;
  }

  try {
    final generator = reportType == 'md' ? MDGenerator('$fileName.md') : HTMLGenerator('$fileName.html');
    final inform = FileManagements(generator);
    await inform.build();
    log('Report generated successfully: $fileName.$reportType');
  } catch (e) {
    log('Error generating report: $e');
  }
}