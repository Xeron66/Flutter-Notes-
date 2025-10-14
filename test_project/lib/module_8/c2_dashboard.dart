import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  // final String phone;      //cant be null!
  // final String ? password; // ? means it can be null
  DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          args['phone'].toString(),
          style: TextStyle(
            fontSize: 50,
            color: Colors.orange
          ),
        ),
      ),
    );
  }
}