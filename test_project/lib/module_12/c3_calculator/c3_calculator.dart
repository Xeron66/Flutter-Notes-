import 'package:flutter/material.dart';
import 'package:test_project/module_12/c3_calculator/widgets/build_button.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _output = '0';
  String _input = '0';
  String _op = '';
  double num1 = 0;
  double num2 = 0;

  void buttonPress (String value) {
    print('Button Pressed $value');

    setState(() {
      if (value == 'C') {
        _output = '0';
        _input = '0';
        _op = '';
        num1 = 0;
        num2 = 0;
      } else if (value == '=') {
        num2 = double.parse(_input);
        if (_op == '+') {
          _output = (num1 + num2).toString();
        } else if (_op == '-') {
          _output = (num1 - num2).toString();
        } else if (_op == '*') {
          _output = (num1 * num2).toString();
        } else if (_op == '/') {
          _output = num2 != 0 ? (num1/num2).toString() : 'Error';
        }
      } else if (['+','-','*','/'].contains(value)) {
        num1 = double.parse(_input);
        _op = value;
        _input = '';
        return;  
      } else {
        if (_input == '0') {
          _input = value;
        } else {
          _input += value;
        }
        _output = _input;
      }
      print(_output);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                child: Column(
                  children: [
              
                    Text(
                      '$_input $_op $_input',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
              
                    SizedBox(height: 20),
                    
                    Text(
                      _output,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Row(
              children: [
                BuildButton(text: '7', onTap: () => buttonPress('7'),),
                BuildButton(text: '8', onTap: () => buttonPress('8'),),
                BuildButton(text: '9', onTap: () => buttonPress('9'),),
                BuildButton(text: '/', onTap: () => buttonPress('/'), color: Colors.amber[600 ],),
              ],
            ),
            Row(
              children: [
                BuildButton(text: '4', onTap: () => buttonPress('4'),),
                BuildButton(text: '5', onTap: () => buttonPress('5'),),
                BuildButton(text: '6', onTap: () => buttonPress('6'),),
                BuildButton(text: '*', onTap: () => buttonPress('*'), color: Colors.amber[600 ],),
              ],
            ),
            Row(
              children: [
                BuildButton(text: '1', onTap: () => buttonPress('1'),),
                BuildButton(text: '2', onTap: () => buttonPress('2'),),
                BuildButton(text: '3', onTap: () => buttonPress('3'),),
                BuildButton(text: '-', onTap: () => buttonPress('-'), color: Colors.amber[600 ],),
              ],
            ),
            Row(
              children: [
                BuildButton(text: 'C', onTap: () => buttonPress('C'),),
                BuildButton(text: '0', onTap: () => buttonPress('0'),),
                BuildButton(text: '=', onTap: () => buttonPress('='),),
                BuildButton(text: '+', onTap: () => buttonPress('+'), color: Colors.amber[600 ],),
              ],
            )
          ],
        ),
      ),
    );
  }
}

