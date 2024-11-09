import 'package:flutter/material.dart';
import 'package:app_tarefas/src/model/todo.dart';

class ToDoList extends StatelessWidget {
  final ToDo todo;

  const ToDoList({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ListTile(
        onTap: () {
          print('Cliquei na nota');
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todo.isComplete ? 
          Icons.check_box : Icons.check_box_outline_blank color: Colors.blue),
        title: Text(
          todo.todoText!,
          style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              decoration: todo.isComplete ? TextDecoration.lineThrough : null),
        ),
        subtitle: Text(
          todo.description!,
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 14,
          ),
        ),
        trailing: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              color: Colors.purple, borderRadius: BorderRadius.circular(5)),
          child: IconButton(
              onPressed: () {
                print('Cliquei');
              },
              iconSize: 18,
              color: Colors.white,
              icon: Icon(Icons.edit)),
        ),
      ),
    );
  }
}
