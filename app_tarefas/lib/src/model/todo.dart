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

  static List<ToDo> todoList() {
    return [
      ToDo(
          id: '01',
          todoText: "Estudo de Idioma",
          description: "Inglês por meia hora",
          isCompleted: true),
      ToDo(
          id: '02',
          todoText: "Exercícios",
          description: "Cardio por 1 hora",
          isCompleted: true),
      ToDo(
        id: '03',
        todoText: "Jogar",
        description: "Stardew Valley e Civilization IV",
      ),
      ToDo(
        id: '04',
        todoText: "Flutter",
        description: "Desenvolvimento do ToDo App",
      ),
    ];
  }
}
