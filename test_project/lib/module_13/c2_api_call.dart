import 'package:flutter/material.dart';

class C2ApiCall extends StatefulWidget {
  const C2ApiCall({super.key});

  @override
  State<C2ApiCall> createState() => _C2ApiCallState();
}

class _C2ApiCallState extends State<C2ApiCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3
        ), 
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container();
        }
      ),
    );
  }
}