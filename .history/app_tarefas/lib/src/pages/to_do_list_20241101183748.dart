import 'package:flutter/material.dart';

class ToDo extends StatelessWidget {
  const ToDo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: 100,
        child: ListTile(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          tileColor: Colors.white,
        ),
      ),
    );
  }
}
