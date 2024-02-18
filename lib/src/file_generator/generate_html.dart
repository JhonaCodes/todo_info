import 'package:todo_info/src/file_generator/generate_base.dart';
import 'package:todo_info/src/model/report_model.dart';

/// A class representing an HTML report generator that extends [GenerateBase].
/// This class implements the logic to generate an HTML-formatted report based on the data stored in the [reportList].
///
class HTMLGenerator extends GenerateBase {
  /// Constructor for HTMLGenerator class.
  /// Takes a [fileName] for the generated report.
  ///
  HTMLGenerator(super.fileName);

  /// Overrides the [exportTextFile] method from the [GenerateBase] class.
  ///
  /// Generates an HTML-formatted report based on the data stored in the [reportList].
  /// The report is sorted by the level of priority, with higher priority items appearing first.
  @override
  String exportTextFile() {
    final report = StringBuffer();

    report.writeln(_baseHtmlTop);

    reportList.sort((a, b) => b.level.compareTo(a.level));

    for (var reportData in reportList) {
      report.writeln(_baseHtmlMiddle(reportData));
    }

    report.writeln(_baseHtmlBottom);

    return report.toString();
  }

  String get _baseHtmlTop {
    return '''<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Report de TODOS</title>
    <style>
        h1 {
            color: #77dd77;
            font-family: sans-serif;
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
        }
        table {
            border-collapse: collapse;
            width: 100%;
            margin-bottom: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
            text-align: center;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        .priority-1 {
            background-color: #444;
            color: #fff;
        }
        .priority-2 {
            background-color: #007bff;
        }
        .priority-3 {
            background-color: #ffc107;
        }
        .priority-4 {
            background-color: #ff851b;
        }
        .priority-5 {
            background-color: #dc3545;
        }
    </style>
</head>
<body>
<h1>Report TODOS</h1>
<table>
    <thead>
    <tr>
        <th>File</th>
        <th>Líne</th>
        <th class="priority-header">Priority</th>
        <th class="priority-header">Level</th>
        <th>Descriptión</th>
    </tr>
    </thead>
    <tbody>''';
  }

  String _baseHtmlMiddle(Report report) {
    return '''
    <tr>
        <td><a href="${report.filePath}">${report.filePath}</a></td>
        <td>${report.lineLocation}</td>
        <td class="priority-${report.level}">${report.priority}</td>
        <td class="priority-${report.level}">${report.level}</td>
        <td>
        ${report.description}
        </td>
    </tr>
  ''';
  }

  String get _baseHtmlBottom {
    return '''
     </tbody>
     </table>
     </body>
     </html>
  ''';
  }
}
