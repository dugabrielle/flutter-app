import 'package:flutter/material.dart';

class ToDo extends StatelessWidget {
  const ToDo({super.key});

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
        subtitle: Text(
          'Esta é a descrição adicional da tarefa',
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 14,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(20)),
          child: IconButton(
              onPressed: () {},
              iconSize: 18,
              color: Colors.black,
              icon: Icon(Icons.edit)),
        ),
      ),
    );
  }
}