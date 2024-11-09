import 'package:flutter/material.dart';
import 'package:app_tarefas/src/model/todo.dart';

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
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {
                deleteToDo(todo.id);
              },
              iconSize: 20,
              color: Colors.white,
              icon: const Icon(Icons.delete),
            ),
            SizedBox(width: 8),
            IconButton(
              onPressed: () {
                // Função
              },
              iconSize: 20,
              color: Colors.white,
              icon: const Icon(Icons.edit),
            ),
          ],
        ),
      ),
    );
  }
}
