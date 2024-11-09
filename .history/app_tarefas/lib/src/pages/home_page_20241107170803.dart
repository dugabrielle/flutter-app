import 'package:flutter/material.dart';
import 'package:app_tarefas/src/pages/to_do_list.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: appBarMethod(),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            SizedBox(height: 10),
            searchBox(), // conteúdo do restante que irá para "widget serchBox", com "return" adicionado
            Expanded(
              child: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Todas as Tarefas',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  ToDo(),
                  ToDo(),
                  ToDo(),
                  ToDo(),
                  ToDo(),
                  ToDo(),
                  ToDo(),
                  ToDo(),
                  ToDo(),
                  ToDo(),
                  ToDo(),
                  ToDo(),
                  ToDo(),
                  ToDo(),
                  ToDo(),
                  ToDo(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget searchBox() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: EdgeInsets.all(10),
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey,
              size: 25,
            ),
            prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
            border: InputBorder.none,
            hintText: "Pesquisar",
          ),
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
          IconButton(
            icon: Icon(Icons.delete, color: Colors.white, size: 30),
            onPressed: () {
              // o código vai aqui
            },
          ),
        ],
      ),
    );
  }
}
