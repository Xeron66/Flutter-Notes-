import 'package:flutter/material.dart';

class ButtonGrp extends StatelessWidget {
  const ButtonGrp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(
        title: Text("Button Group"),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Column(
          children: [
            // Simple Elevated Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)
                )
              ),
              onPressed: (){}, 
              child: Text("Submit"), 
              ),
            SizedBox(height: 50,),
            // Elevated Button in SizedBox
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                  )
                ),
                onPressed: (){}, 
                child: Text("Test"), 
                ),
            ),
            SizedBox(height: 20,),
            // Outlined Button
            SizedBox(
              height: 50,
              width: 300,
              child: OutlinedButton(
                onPressed: (){}, 
                child: Text("Outline")
                ),
            ),
            // TextButton
            TextButton(
              onPressed: (){Text("Read More!");}, 
              child: Text("Read More!")
              ),
            SizedBox(),
            // Just a Simple Icon
            Icon(Icons.phone_android, size: 50, color: Colors.red,),
            // Icon Button
            IconButton(onPressed: (){}, icon: Icon(Icons.delete, size: 50, color: Colors.red,)),
            SizedBox(height: 20,),
            // Custom Button using GestureDetector
            GestureDetector(
              onTap: () {print('Single Tap');},
              onDoubleTap: () {print('Double Tap');},
              onLongPress: (){print('Long Press');},
              child: Text("This is Test Text!"),
            ),
            // Custom Button using InkWell
            InkWell(
              onTap: () {print('Single Tap');},
              onDoubleTap: () {print('Double Tap');},
              onLongPress: (){print('Long Press');},
              child: Text(
                'Test-2',
                style: TextStyle(
                  fontSize: 50
                ),
              ),
            ),
            ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        onPressed: (){print('Click on Add');},
        child: Icon(Icons.add),
        ),
    );
  }
}