import 'package:flutter/material.dart';

class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {

  // Controllers
  // ------------------------------------------------------------
  TextEditingController taskController = TextEditingController();
  List <String> tasks = [];

  addTasks (){
    final task = taskController.text;

    if (task.isNotEmpty) {
      setState(() {
        tasks.add(taskController.text);
        taskController.clear();
        }
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('!!No Tasks Inserted!!')),
      );
    }
  }

  deleteTasks (int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  updateTasks (String value, int index){
  
    if (value.isNotEmpty) {
      setState(() {
        tasks[index] = value;
        }
      );
    } 
  }

  editTasks (int index) {
    final controller = TextEditingController(text: tasks[index]);
    showDialog(context: context, builder: (context) => AlertDialog(
      title: Text('Edit: Task'),
      content: TextField(
        controller: controller,
        ),
        actions: [
          TextButton(onPressed: (){Navigator.pop(context);}, child: Text('cancel')),
          ElevatedButton(
            onPressed: (){
              updateTasks(controller.text, index);
              Navigator.pop(context);
            }, 
            child: Text('update')
          )
        ],
      )
    );
  }

  // ------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo App'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: taskController,
                    decoration: InputDecoration(
                      labelText: 'Enter Tasks'
                    ),
                  )
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: addTasks, 
                  child: Text('Add')
                )
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: tasks.length ,
              itemBuilder: (context, index) {
                return Card( 
                  child: ListTile(
                    title: Text(tasks[index]),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(onPressed: () => editTasks(index), icon: Icon(Icons.edit)),
                        IconButton(onPressed: () => deleteTasks(index), icon: Icon(Icons.delete)),
                      ],
                    ),
                  ),
                );
              } 
            ),
          )
        ],
      ),
    );
  }
}