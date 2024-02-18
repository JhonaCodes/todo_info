import 'generate_base.dart';

/// A class representing a Markdown report generator that extends [GenerateBase].
///
/// This class implements the logic to generate a Markdown-formatted report based on the data stored in the [reportList].
///
class MDGenerator extends GenerateBase {
  /// Constructor for MDGenerator class.
  /// Takes a [fileName] for the generated report.
  ///
  MDGenerator(super.fileName);

  /// Overrides the [exportTextFile] method from the [GenerateBase] class.
  /// Generates a Markdown-formatted report based on the data stored in the [reportList].
  /// The report is sorted by the level of priority, with higher priority items appearing first.
  ///
  @override
  String exportTextFile() {
    final report = StringBuffer();
    report.writeln(
        '| ***File*** | ***Líne*** | ***Priority*** | ***Level*** |***Descriptión*** |');
    report.writeln('|:---|:---:|:---|:---:|:---|');

    reportList.sort((a, b) => b.level.compareTo(a.level));

    for (var reportData in reportList) {
      report.writeln(
          '| [${reportData.filePath}](${reportData.filePath}) | ${reportData.lineLocation} | ${reportData.priority[0].toUpperCase()}${reportData.priority.substring(1)} | ${reportData.level} | ${reportData.description}');
    }

    return report.toString();
  }
}
