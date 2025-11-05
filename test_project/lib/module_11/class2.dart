import 'package:flutter/material.dart';

class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
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
                    decoration: InputDecoration(
                      labelText: 'Enter Tasks'
                    ),
                  )
                ),
                SizedBox(width: 10),
                ElevatedButton(onPressed: (){}, child: Text('Add'))
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: 10 ,
              itemBuilder: (context, index) {
                return Card( 
                  child: ListTile(
                    title: Text('I have a CT Today at 9AM'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
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