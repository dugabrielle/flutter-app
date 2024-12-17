import 'package:flutter/material.dart';
import 'package:app_tarefas/src/model/todo.dart';

class ToDoList extends StatelessWidget {
  final ToDo todo;
  final Function onToDo;
  final Function deleteToDo;
  final Function editToDo;

  const ToDoList({
    Key? key,
    required this.todo,
    required this.onToDo,
    required this.deleteToDo,
    required this.editToDo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        tileColor: Colors.grey[50],
        leading: Checkbox(
          value: todo.isCompleted,
          onChanged: (bool? value) {
            // marca como concluída só se clicar no checkbox
            onToDo(todo);
          },
          activeColor: Colors.purple,
        ),
        title: Text(
          todo.todoText,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            decoration: todo.isCompleted ? TextDecoration.lineThrough : null,
          ),
        ),
        subtitle: Text(
          todo.description ?? '',
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
              iconSize: 22,
              color: Colors.black,
              icon: const Icon(Icons.delete),
            ),
            SizedBox(width: 5),
            IconButton(
              onPressed: () {
                editToDo(todo);
              },
              iconSize: 22,
              color: Colors.black,
              icon: const Icon(Icons.edit),
            ),
          ],
        ),
      ),
    );
  }
}
