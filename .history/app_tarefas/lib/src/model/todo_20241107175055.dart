class ToDo {
  String? id;
  String? todoText;
  String? description;
  bool isComplete;

  ToDo({
    required this.id,
    required this.todoText,
    required this.description,
    this.isComplete = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(
          id: '01',
          todoText: "Estudo de Idioma",
          description: "Inglês por meia hora",
          isComplete: true),
      ToDo(
          id: '01',
          todoText: "Estudo de Idioma",
          description: "Inglês por meia hora",
          isComplete: true),
      ToDo(
          id: '02',
          todoText: "Exercícios",
          description: "Inglês por meia hora",
          isComplete: true),
      ToDo(
          id: '01',
          todoText: "Estudo de Idioma",
          description: "Inglês por meia hora",
          isComplete: true),
    ];
  }
}
