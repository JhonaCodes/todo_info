enum TodoPriority
{
  /// ***[low]:***
  /// ---
  /// ***Definition:***
  /// Tasks that are not urgent and do not have a significant impact on the project.
  ///
  /// ***Examples:***
  /// Updating the documentation of a module that is not frequently used.
  /// Refactoring the code of a non-critical class.
  /// Adding comments to a function that is already easy to understand.
  ///
  /// ***Criteria:***
  /// The task does not have a close deadline.
  /// The task does not directly affect the functionality of the project.
  /// The task can be postponed without affecting the project schedule.
  low,

  /// ***[normal]:***
  /// ---
  /// ***Definition:***
  /// Tasks that are important, but not urgent.
  ///
  /// ***Examples:***
  /// Implementing a new feature that is not critical for the project.
  /// Fixing a minor bug in the user interface.
  /// Optimizing the performance of a section of the code.
  ///
  /// ***Criteria:***
  /// The task is important for the project, but it is not indispensable.
  /// The task can be completed within a reasonable timeframe.
  /// The task does not have an immediate impact on the success of the project.
  normal,

  /// ***[medium]:***
  /// ---
  /// ***Definition:***
  /// Tasks that are important and have a moderate impact on the project.
  ///
  /// ***Examples:***
  /// Implementing a new API that will be used by multiple modules.
  /// Fixing a bug that is causing problems for some users.
  /// Improving the security of the application.
  ///
  /// ***Criteria:***
  /// The task is important for the project and has a visible impact.
  /// The task has a defined deadline, but it is not urgent.
  /// The task can affect the project schedule if it is not completed on time.
  medium,

  /// ***[high]:***
  /// ---
  /// ***Definition:***
  /// Tasks that are urgent and important, and have a significant impact on the project.
  ///
  /// ***Examples:***
  /// Fixing a bug that is blocking the development of the project.
  /// Implementing a new feature that is necessary to meet a deadline.
  /// Responding to a critical request from a client.
  ///
  /// ***Criteria:***
  /// The task is urgent and must be completed immediately.
  /// The task has a direct impact on the success of the project.
  /// The task can cause serious problems if it is not completed on time.
  high,

  /// ***[critical]:***
  /// ---
  /// ***Definition:***
  /// Tasks that are extremely urgent and important, and are essential for the success of the project.
  ///
  /// ***Examples:***
  /// Solving a security issue that is putting user information at risk.
  /// Implementing a new feature that is indispensable for launching the product on time.
  /// Responding to an emergency that is affecting the operation of the project.
  ///
  /// ***Criteria:***
  /// The task is critical and must be completed with the highest priority.
  /// The task has a vital impact on the project.
  /// The success of the project depends on the completion of the task.
  critical
}