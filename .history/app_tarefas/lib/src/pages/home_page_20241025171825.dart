import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(
        backgroundColor: Colors.purple,
        toolbarHeight: 80,
        elevation: 0,
        title: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  "ToDo App",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              height: 70,
              width: 70,
              child: CircleAvatar(
                backgroundImage: AssetImage('lib/src/assets/images/avatar.png'),
              ),
            ),
            Spacer(),
            Icon(Icons.delete, color: Colors.grey, size: 30),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              'Tarefas',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}