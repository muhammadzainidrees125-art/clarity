class TaskModel {
  String? taskTitle;
  String? description;
  String? dueDate;
  String? priorityLevel;
  List<String>? tags;
  String? suggestedtasks;
  TaskModel({
    required this.taskTitle,
    required this.description,
    required this.dueDate,
    required this.priorityLevel,
    required this.tags,
    required this.suggestedtasks,
  });
}
