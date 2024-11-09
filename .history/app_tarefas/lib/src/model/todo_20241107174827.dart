class ToDo {
  String? id;
  String? todoText;
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
