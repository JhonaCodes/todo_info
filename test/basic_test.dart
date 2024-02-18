import 'package:test/test.dart';
import 'package:todo_info/src/core/file_managment.dart';
import 'package:todo_info/src/file_generator/generate_html.dart';
import 'package:todo_info/src/file_generator/generate_md.dart';
import 'package:todo_info/src/model/report_model.dart';
import 'package:todo_info/todo_info.dart';

void main() {
  group('TODO Info Library Tests', () {
    test('Generate Markdown report', () {
      final mdFile = MDGenerator('test_report.md');
      mdFile.reportList.add(Report(
        priority: "low",
        lineLocation: 20,
        level: 1,
        filePath: 'file.dart',
        description: 'test_report',
      ));
      final inform = FileManagements(mdFile);

      inform.build();

      final reportContent = mdFile.exportTextFile();

      expect(reportContent.contains("test_report"), true);
    });

    test('Generate HTML report', () {
      final todo =
          TODO('Implement error handling', priority: TodoPriority.high);
      final htmlFile = HTMLGenerator('test_report.html');
      htmlFile.reportList.add(Report(
        filePath: 'file path',
        lineLocation: 30,
        priority: todo.priority.name,
        level: todo.priority.index,
        description: todo.message,
      ));
      final inform = FileManagements(htmlFile);

      inform.build();

      final reportContent = htmlFile.exportTextFile();

      expect(reportContent.contains(todo.message), true);
    });
  });
}
