import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  final String phone;      //cant be null!
  final String ? password; // ? means it can be null
  DashBoard({super.key, required this.phone, this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          phone,
          style: TextStyle(
            fontSize: 50,
            color: Colors.orange
          ),
        ),
      ),
    );
  }
}