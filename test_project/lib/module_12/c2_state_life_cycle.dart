import 'package:flutter/material.dart';
import 'package:test_project/module_12/c2_example_screen.dart';

class LifeCycle extends StatefulWidget {
  LifeCycle({super.key}){
    print('1 Constructor');
  }

  @override
  State<LifeCycle> createState() {
    print('2 create state');
    return _LifeCycleState();
  }
}

class _LifeCycleState extends State<LifeCycle> {
  //some variables
  final Color bgColor = Colors.grey;
  final String name = 'Hello World';

  @override
  void initState() {
    // TODO: implement initState
    print('3 init state');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    print('4 Did Change Dependencies');
    super.didChangeDependencies();
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    print('5 Deactivate');
    super.deactivate();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  print('Set State Called');
                  Navigator.push(context, MaterialPageRoute(builder:  (context)=>ExampleScreen()));
                });
              },
              child: Container(
                color: bgColor,
                height: 100,
                width: 200,
                child: Text(name),
              ), 
            )
          ],
        ),
      ),
    );
  } 
}