import 'package:flutter/material.dart';

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
        ),
      ),
    ),
  );
}
