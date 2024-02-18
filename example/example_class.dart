import 'package:todo_info/todo_info.dart';

/// The `@TODO` tag is used to mark tasks or areas of improvement within the codebase.
/// It helps in identifying incomplete or to-be-implemented features, improvements, or fixes.
/// The tag is followed by a description of the task or improvement.
/// Additionally, it can include a priority level specified by `TodoPriority`.
/// The priority levels include:
///   - `high`: Indicates critical tasks that need immediate attention.
///   - `medium`: Represents important tasks that should be addressed soon.
///   - `normal`: Denotes tasks of regular importance.
///   - `low`: Indicates tasks that are less urgent and can be addressed later.
///   - `critical`: Signifies tasks of utmost importance, possibly indicating severe issues.
/// The `@TODO` tag can be used within comments to mark areas.
/// Here's an example of how it can be used:
///

@TODO("Need to implement this class, because it is important during build time",
    priority: TodoPriority.high)
class ExampleClass {
  @TODO("Requires async implementation", priority: TodoPriority.medium)
  void someFunction() {
    @TODO("We need to create an external function",
        priority: TodoPriority.critical)
    // ignore: unused_element
    someCode() {}

    /// We can use on commented code but with same format
    // @TODO("It is recommended to do revisions", priority: TodoPriority.low)
  }

  @TODO("Evaluate if 'late' is required", priority: TodoPriority.normal)
  // ignore: unused_field
  late final _exampleVariable = "";
}
