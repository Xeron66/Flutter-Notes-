import 'package:flutter/material.dart';

class Class3 extends StatelessWidget {
  const Class3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10,),
        
            Container(
              height: 150,
              width: 150,
        
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 255, 247),
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [
                    Colors.red,
                    Colors.red
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    offset: Offset(0, 10)
                  )
                ]
              ),
              
              child: Column(
                children: [
                  Icon(Icons.phone, size: 100, color: Colors.white,),
                  Text('Phone', style: TextStyle(fontSize: 25, color: Colors.white),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}