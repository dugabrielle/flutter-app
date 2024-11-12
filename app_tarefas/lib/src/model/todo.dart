class ToDo {
  String id;
  String todoText;
  String? description;
  bool isCompleted;

  ToDo({
    required this.id,
    required this.todoText,
    this.description,
    this.isCompleted = false,
  });
}