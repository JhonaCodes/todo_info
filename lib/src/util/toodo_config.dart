import 'package:todo_info/src/core/file_managment.dart';
import 'package:todo_info/src/file_generator/generate_html.dart';
import 'package:todo_info/src/file_generator/generate_md.dart';

enum TypeInform { md, html, both }

/// A configuration class for generating TODO reports in Markdown (MD), HTML, or both formats.
class TodoConfig {
  /// Initializes the generation of TODO reports based on the specified configuration.
  /// This method allows the user to generate reports in Markdown, HTML, or both formats.
  /// The [typeInform] parameter specifies the desired output format (MD, HTML, or both).
  /// The [fileName] parameter specifies the name of the file(s) to be generated.
  ///
  static Future<void> initialization(
      {required TypeInform typeInform, required String fileName}) async {
    if (typeInform == TypeInform.html) await _generateHtml(fileName);

    if (typeInform == TypeInform.md) _generateMD(fileName);

    if (typeInform == TypeInform.both) {
      _generateHtml(fileName);
      _generateMD(fileName);
    }
  }

  /// Generates an HTML-formatted TODO report.
  static Future<void> _generateHtml(String fileName) async {
    final htmlFile = HTMLGenerator("$fileName.html");

    final inform = FileManagements(htmlFile);

    await inform.build();
  }

  /// Generates a Markdown-formatted TODO report.
  static Future<void> _generateMD(String fileName) async {
    final mdFile = MDGenerator("$fileName.md");

    final inform = FileManagements(mdFile);

    await inform.build();
  }
}
