import 'dart:developer';
import 'dart:io';

import 'package:glob/glob.dart';
import 'package:glob/list_local_fs.dart';
import 'package:todo_info/src/file_generator/generate_base.dart';
import 'package:todo_info/src/model/report_model.dart';
import 'package:todo_info/src/util/priority.dart';

/// A utility class for managing files and generating reports based on TODO comments within the files.
class FileManagements {
  /// The file extension to search for. Default is '.dart'.
  final String fileExtension;

  /// The generator responsible for generating the report.
  final GenerateBase _generatorInform;

  /// Constructor for FileManagements class.
  /// Takes a [GenerateBase] instance as the generator and an optional [fileExtension].
  FileManagements(this._generatorInform, {this.fileExtension = '.dart'});

  /// Builds the report based on TODO comments found in the files.
  /// It extracts data from the files, generates the report, and writes it to a file.
  Future<void> build() async {
    try {
      await _extractDataOnFiles();

      final file = File(_generatorInform.fileName);
      await file.writeAsString(_generatorInform.exportTextFile());
    } catch (e, stackTrace) {
      log("FileManagements.buildInform.Error: ${e.toString()}\n${stackTrace.toString()}");
    }
  }

  /// Extracts data from the files by searching for TODO comments.
  Future<void> _extractDataOnFiles() async {
    final files = await _findFiles();

    for (var value in files) {
      final lines = File(value).readAsLinesSync();
      _buildFile(lines, value);
    }
  }

  /// Builds the report based on the lines extracted from the file.
  void _buildFile(List<String> lines, String file) {
    for (var i = 0; i < lines.length; i++) {
      final line = lines[i];
      final match = validateFile(line);

      if (match != null) {
        final message = match.group(1);
        final priorityString = match.group(2);
        final priority = _priorities[priorityString];

        _generatorInform.reportList.add(Report(
          priority: priority != null ? priority.name : "",
          description: message ?? "",
          filePath: file,
          level: priority != null ? (priority.index + 1) : 0,
          lineLocation: i,
        ));
      }
    }
  }

  /// Validates if a line in a file contains a TODO comment.
  /// Returns a [RegExpMatch] if found, otherwise null.
  RegExpMatch? validateFile(String file) {
    final match = RegExp(r'@TODO\("(.*?)", priority: TodoPriority\.(.*?)\)')
        .firstMatch(file);
    return match;
  }

  /// Finds files with the specified file extension.
  /// Returns a list of file paths.
  Future<List<String>> _findFiles() async {
    List<String> filesR = [];
    try {
      final files = Glob('**/*$fileExtension').listSync();

      for (var file in files) {
        filesR.add(file.path);
      }
    } catch (e, stackTrace) {
      log("FileManagements.findFiles.Error: ${e.toString()}\n${stackTrace.toString()}");
    }
    return filesR;
  }

  /// Map of priority levels and their corresponding [TodoPriority] enums.
  final _priorities = {
    'low': TodoPriority.low,
    'normal': TodoPriority.normal,
    'medium': TodoPriority.medium,
    'high': TodoPriority.high,
    'critical': TodoPriority.critical,
  };
}
