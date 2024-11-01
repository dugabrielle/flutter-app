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
            searchBox(), // conteudo do restante que irá para widget serchBox
          ],
        ),
      ),
    );
  }

  Widget searchBox() {
    Center(
              child: Container(
                padding: EdgeInsets.all(10),
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 25,
                    ),
                    prefixIconConstraints:
                        BoxConstraints(maxHeight: 20, minWidth: 25),
                    border: InputBorder.none,
                    hintText: "Pesquisar",
                  ),
                ),
              ),
            ),
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
