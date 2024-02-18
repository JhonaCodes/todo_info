/// A class representing a report item.
/// This class encapsulates information about a specific TODO item found in a file.
///
class Report {
  /// The file path where the TODO item was found.
  final String filePath;

  /// The line number where the TODO item was found.
  final int lineLocation;

  /// The priority level of the TODO item.
  final String priority;

  /// The numerical level of the TODO item, corresponding to its priority.
  final int level;

  /// The description of the TODO item.
  final String description;

  /// Constructor for Report class.
  /// Takes parameters to initialize the report item with required information.
  const Report({
    required this.filePath,
    required this.lineLocation,
    required this.priority,
    required this.level,
    required this.description,
  });
}
