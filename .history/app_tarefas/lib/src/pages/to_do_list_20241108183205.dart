import 'package:flutter/material.dart';
import 'package:app_tarefas/src/model/todo.dart';

class ToDoList extends StatelessWidget {
  final ToDo todo;
  final onToDo;
  final deleteToDo;

  const ToDoList(
      {Key? key,
      required this.todo,
      required this.onToDo,
      required this.deleteToDo;
})
      : super(key: key);

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
            todo.isComplete ? Icons.check_box : Icons.check_box_outline_blank,
            color: Colors.blue),
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
              icon: Icon(Icons.delete)),
        ),
      ),
    );
  }
}
