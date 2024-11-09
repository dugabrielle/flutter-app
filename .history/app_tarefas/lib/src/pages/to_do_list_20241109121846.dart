import 'package:flutter/material.dart';
import 'package:app_tarefas/src/model/todo.dart';

<<<<<<< HEAD
class ToDoList extends StatelessWidget {
  final ToDo todo;
  final onToDo;
  final deleteToDo;

  const ToDoList({
    Key? key,
    required this.todo,
    required this.onToDo,
    required this.deleteToDo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ListTile(
        onTap: () {
          onToDo(todo);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
            todo.isCompleted ? Icons.check_box : Icons.check_box_outline_blank,
            color: Colors.blue),
        title: Text(
          todo.todoText!,
          style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              decoration: todo.isCompleted ? TextDecoration.lineThrough : null),
        ),
        subtitle: Text(
          todo.description!,
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 14,
          ),
=======
class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  _ToDoState createState() =>
      _ToDoState(); // gerenciar o estado o checkbox e das notas
}

class _ToDoState extends State<ToDo> {
  bool isChecked = false;
  String texto = '';
  
}

@override
Widget build(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(10),
    child: ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      tileColor: Colors.white,
      leading: Icon(Icons.check_box, color: Colors.blue),
      title: Text(
        'Confirmar',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          decoration: TextDecoration.lineThrough,
>>>>>>> f1f36c2741b6e625a311ebfe4086e1ec5252246a
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {
                deleteToDo(todo.id);
              },
              iconSize: 22,
              color: Colors.purple,
              icon: const Icon(Icons.delete),
            ),
            SizedBox(width: 5),
            IconButton(
              onPressed: () {
                // Função
              },
              iconSize: 22,
              color: Colors.purple,
              icon: const Icon(Icons.edit),
            ),
          ],
        ),
      ),
    ),
  );
}
