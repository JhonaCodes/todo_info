# TODO Info Library

TODO Info Library is a Dart library for analyzing source code files and generating reports based on TODO comments found within them. It provides functionality to generate reports in Markdown (MD), HTML, or both formats, making it versatile and adaptable to different project requirements.

## Features

- Analyzes source code files to identify and extract TODO comments.
- Generates reports listing TODO items along with their priority, file location, and description.
- Supports output in Markdown (MD) and HTML formats.
- Allows customization of report generation based on user-defined preferences.

## Installation

To use TODO Info Library in your Dart project, add the following dependency to your `pubspec.yaml` file:


```yaml
dependencies:
  todo_info: ^1.0.0
```

Then, run `dart pub get` to install the library.

## Usage

Here's an example of how to use TODO Info Library to generate reports:

```dart
import 'package:todo_info/todo_info.dart';

void main() async{
  TodoConfig.initialization(typeInform: TypeInform.both, fileName: 'todo_info');
}
```

## Documentation

- [API Documentation](https://link-to-your-api-documentation.com)

## Contributing

Contributions to TODO Info Library are welcome! Feel free to submit bug reports, feature requests, or pull requests through the [GitHub repository](https://github.com/your-username/todo_info).

## License

TODO Info Library is licensed under the [MIT License](https://opensource.org/licenses/MIT). See the [LICENSE](LICENSE) file for more details.
