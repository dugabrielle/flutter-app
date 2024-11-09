class ToDo {
  String? id;
  String? todoText;
  String? description;
  bool isComplete;

  ToDo({
    required this.id,
    required this.todoText,
    this.isComplete = false,
  });

  static List<ToDo> todoList() {
    return [];
  }
}
