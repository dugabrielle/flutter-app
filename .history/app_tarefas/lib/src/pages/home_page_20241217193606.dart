import 'package:app_tarefas/src/model/todo.dart';
import 'package:flutter/material.dart';
import 'package:app_tarefas/src/pages/to_do_list.dart';
import 'package:app_tarefas/src/model/todo.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<ToDo> todosList = [];

  List<ToDo> _encontrarNota = [];

  final _todoController = TextEditingController();
  final _descriptionController = TextEditingController();

  List<ToDo> incompleteTodos = [];
  List<ToDo> completedTodos = [];

  @override
  void initState() {
    super.initState();
    _splitTodos();
  }

  void _splitTodos() {
    incompleteTodos = todosList.where((todo) => !todo.isCompleted).toList();
    completedTodos = todosList.where((todo) => todo.isCompleted).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 232, 224, 247),
      appBar: appBarMethod(),
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate([
                  //  Ele é renderizado primeiro e por ser o primeiro item da lista, permanece fixo enquanto o restante da lista rola.
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: searchBox(),
                  ),
                ]),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Container(
                    child: Text(
                      'Tarefas',
                      style: GoogleFonts.comicNeue(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple[800],
                        letterSpacing: 2,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                  ),
                  for (ToDo todos in incompleteTodos)
                    ToDoList(
                      todo: todos,
                      onToDo: toDoChange,
                      deleteToDo: deleteItem,
                      editToDo: editItem,
                    ),
                  if (completedTodos.isNotEmpty)
                    Divider(
                      color: Colors.black,
                    ),
                  Container(
                    // child: Text('Tarefas Concluídas'),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                  ),
                  for (ToDo todo in completedTodos)
                    ToDoList(
                      todo: todo,
                      onToDo: toDoChange,
                      deleteToDo: deleteItem,
                      editToDo: editItem,
                    ),
                ]),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 15, right: 10, left: 10),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 10.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                    ),
                    child: TextField(
                      maxLength: 100,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      controller: _todoController,
                      decoration: InputDecoration(
                        hintText: "Título",
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 15, right: 10),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 10.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                    ),
                    child: TextField(
                      maxLength: 100,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      controller: _descriptionController,
                      decoration: InputDecoration(
                        hintText: "Descrição",
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15, right: 10),
                  child: ElevatedButton(
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                    onPressed: () {
                      addToDo(_todoController.text);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: Size(60, 60),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            5), // força o formato quadrado
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void toDoChange(ToDo todo) {
    setState(() {
      todo.isCompleted = !todo.isCompleted;
      _splitTodos();
    });
  }

  void deleteItem(String id) {
    setState(() {
      todosList.removeWhere((item) => item.id == id);
      _splitTodos();
    });
  }

  int _todoCounter = 0;

  void addToDo(String toDo) {
    if (_todoController.text.isEmpty) {
      // Exibe um alerta simples
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('O Título não pode ser vazio!'),
          backgroundColor: Colors.red,
        ),
      );
      return; // Não cria a tarefa
    }

    setState(() {
      _todoCounter++;
      todosList.add(ToDo(
          id: _todoCounter.toString(),
          todoText: _todoController.text,
          description: _descriptionController.text));
    });
    _splitTodos();
    _todoController.clear();
    _descriptionController.clear();
  }

  void editItem(ToDo todo) {
    final _todoController = TextEditingController(text: todo.todoText);
    final _descriptionController =
        TextEditingController(text: todo.description);

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Editar Nota'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: _todoController,
                  decoration: InputDecoration(labelText: 'Título'),
                  maxLength: 100,
                ),
                TextField(
                  controller: _descriptionController,
                  decoration: InputDecoration(labelText: 'Descrição'),
                  maxLength: 100,
                ),
              ],
            ),
            actions: <Widget>[
              IconButton(
                onPressed: () {
                  setState(() {
                    todo.todoText = _todoController.text; // Atualiza o título
                    todo.description =
                        _descriptionController.text; // Atualiza a descrição
                  });
                  Navigator.pop(context);
                },
                iconSize: 22,
                color: Colors.purple,
                icon: Icon(Icons.save),
              ),
            ],
          );
        });
  }

  Widget searchBox() {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const TextField(
        style: TextStyle(
          color: Colors.grey,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
            size: 25,
          ),
          prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
          border: InputBorder.none,
          hintText: "Pesquisar",
        ),
      ),
    );
  }

  AppBar appBarMethod() {
    return AppBar(
      backgroundColor: Colors.deepPurple[300],
      toolbarHeight: 80,
      elevation: 0,
      title: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(5),
              child: Text(
                'ToDo App',
                style: GoogleFonts.comicNeue(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            height: 70,
            width: 70,
            child: const CircleAvatar(
              backgroundImage: AssetImage('lib/src/assets/images/avatar.png'),
            ),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.white, size: 30),
            onPressed: () {
              // Implementação do botão de logout
            },
          ),
        ],
      ),
    );
  }
}
