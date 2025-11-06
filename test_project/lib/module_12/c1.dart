import 'package:flutter/material.dart';

class StateClass extends StatefulWidget {
  const StateClass({super.key});

  @override
  State<StateClass> createState() => _StateClassState();
}

class _StateClassState extends State<StateClass> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: SafeArea (
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(num.toString(), style: TextStyle(
                fontSize: 34
                ), 
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
                children: [
                  IconButton(onPressed: (){
                    setState(() {
                      num++;
                    });
                  }, icon: Icon(Icons.add)),
                  IconButton(onPressed: (){
                    setState(() {
                      num--;
                    });
                  }, icon: Icon(Icons.minimize)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}