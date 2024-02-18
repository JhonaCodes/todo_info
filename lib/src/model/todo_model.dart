import 'package:todo_info/src/util/priority.dart';

/// A class representing a TODO item.
/// This class encapsulates information about a TODO task, including its message and priority level.
///
// ignore: non_constant_identifier_names
class TODO {
  /// The message describing the TODO task.
  final String message;

  /// The priority level of the TODO task.
  final TodoPriority priority;

  /// Constructor for the TODO class.
  /// Takes a [message] describing the task and an optional [priority] level (default is [TodoPriority.normal]).
  const TODO(this.message, {this.priority = TodoPriority.normal});

  /// Overrides the toString method to provide a string representation of the TODO item.
  @override
  String toString() => 'TODO: $message (Priority: ${priority.index})';
}
