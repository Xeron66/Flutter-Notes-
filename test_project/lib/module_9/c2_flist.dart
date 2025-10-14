import 'package:flutter/material.dart';

class Flist extends StatelessWidget {
  const Flist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),

      // eta auto responsive, auto scrolling ache,
      // api theke call kore show kore
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text('Foyez'),
              subtitle: Text('01612388414'),
              leading: Icon(Icons.phone),
              trailing: Icon(Icons.delete, color: Colors.red,),
            ),
          );
        },
        ),
    );
  }
}