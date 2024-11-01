import 'package:flutter/material.dart';

class ToDo extends StatelessWidget {
  const ToDo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.blueAccent),
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
}
