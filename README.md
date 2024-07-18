# TODO Info Library

![todo](https://github.com/JhonaCodes/todo_info/assets/53523825/a0e303d8-3caf-4919-8c9d-5d9aaaf537ad)


[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![text_field_validation](https://img.shields.io/pub/v/todo_info.svg)](https://pub.dev/packages/text_field_validation)
[![Dart 3](https://img.shields.io/badge/Dart-3%2B-blue.svg)](https://dart.dev/)
[![Flutter 3.10](https://img.shields.io/badge/Flutter-3%2B-blue.svg)](https://flutter.dev/)

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
  todo_info: ^1.0.1
```

Then, run `flutter pub get` to install the library.
OR
run `dart pub get` to install the library.

## Usage

Here's an example of how to use TODO Info Library to generate reports:

```dart
import 'package:todo_info/todo_info.dart';

void main() async{
  TodoConfig.initialization(typeInform: TypeInform.both, fileName: 'todo_info');
}



@TODO("Need to implement this class, because it is important during build time", priority: TodoPriority.high)
class ExampleClass{

  @TODO("Requires async implementation", priority: TodoPriority.medium)
  void someFunction(){

    @TODO("We need to create an external function", priority: TodoPriority.critical)
    var someCode = (){};

    /// We can use on commented code but with same format
    // @TODO("It is recommended to do revisions", priority: TodoPriority.low)

  }

  @TODO("Evaluate if 'late' is required", priority: TodoPriority.normal)
  late final _exampleVariable;


}

```
Or generate from console:
```
///dart generate/report.dart <name_file> <format>
 dart generate/report.dart generated html 
```

### Html report
<img width="1208" alt="Screenshot 2024-02-19 at 3 14 54 AM" src="https://github.com/JhonaCodes/todo_info/assets/53523825/042a12c5-f76d-4c39-a67e-2fb299e31f87">

### Markdown report

<img width="847" alt="Screenshot 2024-02-19 at 3 14 24 AM" src="https://github.com/JhonaCodes/todo_info/assets/53523825/e0f06456-5a58-4a8b-b3ec-efd690a2009f">


## Contributing

Contributions to TODO Info Library are welcome! Feel free to submit bug reports, feature requests, or pull requests through the [GitHub repository](https://github.com/JhonaCodes/todo_info).

## License

TODO Info Library is licensed under the [MIT License](https://opensource.org/licenses/MIT). See the [LICENSE](LICENSE) file for more details.
