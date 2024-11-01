import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: appBarMethod(),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(10),
              height: 45,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 20,
                  ),
                  prefixIconConstraints:
                      BoxConstraints(maxHeight: 20, minWidth: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar appBarMethod() {
    return AppBar(
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
    );
  }
}
