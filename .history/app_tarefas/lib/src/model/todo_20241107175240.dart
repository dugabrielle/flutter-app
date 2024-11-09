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
          id: '02',
          todoText: "Exercícios",
          description: "Cardio por 1 hora",
          isComplete: true),
      ToDo(
        id: '03',
        todoText: "Jogar",
        description: "Stardew Valley e Civilization IV",
      ),
      ToDo(
          id: '04',
          todoText: "Flutter",
          description: "Desenvolvimento do App ToDo",
          isComplete: true),
    ];
  }
}
