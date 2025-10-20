import 'package:flutter/material.dart';

class HeroPage extends StatelessWidget {
  const HeroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Hero(
          tag: 'PreviousClass', 
          child: Text('Previous Class', style: TextStyle(
            fontSize: 40
          ),)
          ),
      ),
    );
  }
}