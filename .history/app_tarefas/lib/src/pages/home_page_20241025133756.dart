import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
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
              height: 50,
              width: 50,
              child: CircleAvatar(
                backgroundImage:
                    AssetImage('app_tarefas\lib\src\assets\images\avatar.png'),
              ),
            ),
            Icon(Icons.delete, color: Colors.grey, size: 30),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                'Tarefas',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
