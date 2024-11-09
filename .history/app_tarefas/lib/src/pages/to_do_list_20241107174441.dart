import 'package:flutter/material.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  // Controladores para capturar o texto do título da tarefa
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  List<String> todoList = []; // Lista que vai armazenar as tarefas

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Tarefas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            // Campo para digitar o título da tarefa
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: 'Título da Tarefa',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            // Campo para digitar a descrição da tarefa
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(
                labelText: 'Descrição da Tarefa',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            // Botão para adicionar a tarefa
            ElevatedButton(
              onPressed: () {
                setState(() {
                  // Adiciona a tarefa na lista
                  todoList.add(titleController.text);
                });
                titleController.clear();
                descriptionController.clear();
              },
              child: const Text('Adicionar Tarefa'),
            ),
            const SizedBox(height: 20),
            // Lista de Tarefas
            Expanded(
              child: ListView.builder(
                itemCount: todoList.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    child: ListTile(
                      onTap: () {
                        print('Cliquei na tarefa');
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                      tileColor: Colors.white,
                      leading: Icon(Icons.check_box, color: Colors.blue),
                      title: Text(
                        todoList[index],
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      subtitle: Text(
                        descriptionController.text,
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 14,
                        ),
                      ),
                      trailing: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: IconButton(
                          onPressed: () {
                            print('Cliquei no editar');
                          },
                          iconSize: 18,
                          color: Colors.white,
                          icon: Icon(Icons.edit),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
