import 'package:todo_info/src/model/report_model.dart';

/// Abstract class representing a base for generating reports.
/// This class serves as a foundation for implementing different report generators, providing a common interface.
/// It promotes polymorphism by allowing multiple report generators, such as Markdown and HTML generators, to be created.
/// By using this class, the code becomes more scalable and maintainable as it decouples the report generation logic from the specific file format.
abstract class GenerateBase {
  /// The file name for the generated report.
  final String fileName;

  /// List to store generated reports.
  List<Report> reportList = [];

  /// Constructor for GenerateBase class.
  /// Takes a [fileName] for the generated report.
  GenerateBase(this.fileName);

  /// Abstract method to export the report as a text file.
  /// Subclasses must implement this method.
  String exportTextFile();
}
