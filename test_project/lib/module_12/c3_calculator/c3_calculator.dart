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

  // State for theme
  bool _isDarkMode = true;

  // Function to toggle theme
  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  // Helper function to format output (removes .0 from integers)
  void _formatOutput() {
    if (_output.contains('.')) {
      double outputAsDouble = double.parse(_output);
      if (outputAsDouble == outputAsDouble.truncate()) {
        _output = outputAsDouble.truncate().toString();
      }
    }
  }

  // Helper function for calculation
  void _calculate() {
    // Avoid calculation if operator is missing
    if (_op.isEmpty) return;

    double num2 = double.parse(_input);
    double result = 0;

    if (_op == '+') {
      result = num1 + num2;
    } else if (_op == '-') {
      result = num1 - num2;
    } else if (_op == '*') {
      result = num1 * num2;
    } else if (_op == '/') {
      if (num2 == 0) {
        _output = 'Error';
        _input = '0';
        _op = '';
        num1 = 0;
        return;
      }
      result = num1 / num2;
    }

    _output = result.toString();
    _formatOutput(); // Format the result
    _input = _output; // Set input to the result for chaining
    num1 = result;
    // _op is reset by the calling function (= or new operator)
  }

  void buttonPress(String value) {
    print('Button Pressed $value');

    setState(() {
      if (value == 'AC') {
        _output = '0';
        _input = '0';
        _op = '';
        num1 = 0;
      } else if (['+', '-', '*', '/'].contains(value)) {
        // Handle chained operations like 5 + 5 + ...
        if (_op.isNotEmpty) {
          _calculate();
        }
        // Set num1 from the current input
        num1 = double.parse(_input);
        _op = value;
        _input = '0'; // Reset input for the next number
      } else if (value == '=') {
        _calculate();
        _op = ''; // Clear operator after equals
      } else if (value == '.') {
        // Add decimal point
        if (!_input.contains('.')) {
          _input += '.';
        }
        _output = _input;
      } else {
        // This is a digit
        if (_input == '0') {
          _input = value;
        } else {
          _input += value;
        }
        _output = _input;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // --- Define Dynamic Colors based on Theme ---

    // --- Dark Mode Colors ---
    final Color darkBg = Colors.black;
    final Color darkText = Colors.white;
    final Color darkOperator = Colors.amber[700]!;
    final Color darkTopButton = Colors.grey[400]!;
    final Color darkDigit = const Color(0xFF333333);
    final Color darkTopButtonText = Colors.black;
    final Color darkDigitText = Colors.white;

    // --- Light Mode Colors ---
    final Color lightBg = Colors.grey[200]!;
    final Color lightText = Colors.black;
    final Color lightOperator = Colors.amber[700]!;
    final Color lightTopButton = Colors.grey[500]!;
    final Color lightDigit = Colors.white; // White buttons on light grey bg
    final Color lightTopButtonText = Colors.white;
    final Color lightDigitText = Colors.black; // Black text on white buttons

    // --- Current Colors ---
    final Color bgColor = _isDarkMode ? darkBg : lightBg;
    final Color textColor = _isDarkMode ? darkText : lightText;
    final Color operatorColor = _isDarkMode ? darkOperator : lightOperator;
    final Color topButtonColor = _isDarkMode ? darkTopButton : lightTopButton;
    final Color digitColor = _isDarkMode ? darkDigit : lightDigit;

    final Color topButtonTextColor =
        _isDarkMode ? darkTopButtonText : lightTopButtonText;
    final Color digitTextColor = _isDarkMode ? darkDigitText : lightDigitText;
    final Color operatorTextColor = Colors.white; // Always white for amber button

    return Scaffold(
      backgroundColor: bgColor, // Use dynamic bg color
      body: SafeArea(
        child: Column(
          children: [
            // Display Area
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                child: Text(
                  _output,
                  style: TextStyle(
                    color: textColor, // Use dynamic text color
                    fontSize: 88,
                    fontWeight: FontWeight.w300,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),

            // Button Rows
            Row(
              children: [
                BuildButton(
                  text: 'AC',
                  onTap: () => buttonPress('AC'),
                  color: topButtonColor,
                  textColor: topButtonTextColor,
                ),
                // NEW: Theme Toggle Button
                BuildButton(
                  icon: _isDarkMode
                      ? Icons.light_mode_outlined
                      : Icons.dark_mode_outlined,
                  onTap: _toggleTheme, // Call toggle function
                  color: topButtonColor,
                  textColor: topButtonTextColor,
                ),
                BuildButton(
                  text: '', // Invisible spacer
                  onTap: () {},
                  color: bgColor, // Match background
                ),
                BuildButton(
                  text: '/',
                  onTap: () => buttonPress('/'),
                  color: operatorColor,
                  textColor: operatorTextColor,
                ),
              ],
            ),
            Row(
              children: [
                BuildButton(
                    text: '7',
                    onTap: () => buttonPress('7'),
                    color: digitColor,
                    textColor: digitTextColor),
                BuildButton(
                    text: '8',
                    onTap: () => buttonPress('8'),
                    color: digitColor,
                    textColor: digitTextColor),
                BuildButton(
                    text: '9',
                    onTap: () => buttonPress('9'),
                    color: digitColor,
                    textColor: digitTextColor),
                BuildButton(
                  text: '*',
                  onTap: () => buttonPress('*'),
                  color: operatorColor,
                  textColor: operatorTextColor,
                ),
              ],
            ),
            Row(
              children: [
                BuildButton(
                    text: '4',
                    onTap: () => buttonPress('4'),
                    color: digitColor,
                    textColor: digitTextColor),
                BuildButton(
                    text: '5',
                    onTap: () => buttonPress('5'),
                    color: digitColor,
                    textColor: digitTextColor),
                BuildButton(
                    text: '6',
                    onTap: () => buttonPress('6'),
                    color: digitColor,
                    textColor: digitTextColor),
                BuildButton(
                  text: '-',
                  onTap: () => buttonPress('-'),
                  color: operatorColor,
                  textColor: operatorTextColor,
                ),
              ],
            ),
            Row(
              children: [
                BuildButton(
                    text: '1',
                    onTap: () => buttonPress('1'),
                    color: digitColor,
                    textColor: digitTextColor),
                BuildButton(
                    text: '2',
                    onTap: () => buttonPress('2'),
                    color: digitColor,
                    textColor: digitTextColor),
                BuildButton(
                    text: '3',
                    onTap: () => buttonPress('3'),
                    color: digitColor,
                    textColor: digitTextColor),
                BuildButton(
                  text: '+',
                  onTap: () => buttonPress('+'),
                  color: operatorColor,
                  textColor: operatorTextColor,
                ),
              ],
            ),
            Row(
              children: [
                BuildButton(
                  text: '0',
                  onTap: () => buttonPress('0'),
                  flex: 2, // '0' button is wider
                  color: digitColor,
                  textColor: digitTextColor,
                ),
                BuildButton(
                  text: '.',
                  onTap: () => buttonPress('.'),
                  color: digitColor,
                  textColor: digitTextColor,
                ),
                BuildButton(
                  text: '=',
                  onTap: () => buttonPress('='),
                  color: operatorColor,
                  textColor: operatorTextColor,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}