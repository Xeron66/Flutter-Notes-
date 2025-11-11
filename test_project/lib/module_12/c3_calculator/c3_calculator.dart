import 'package:flutter/material.dart';
import 'package:test_project/module_12/c3_calculator/widgets/build_button.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [

                  Text(
                    '10 + 50',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),

                  SizedBox(height: 20),
                  
                  Text(
                    '60',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            Row(
              children: [
                BuildButton(text: '7', onTap: () {  },),
                BuildButton(text: '8', onTap: () {  },),
                BuildButton(text: '9', onTap: () {  },),
                BuildButton(text: '%', onTap: () {  },),
              ],
            )
          ],
        ),
      ),
    );
  }
}

