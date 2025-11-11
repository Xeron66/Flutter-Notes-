import 'package:flutter/material.dart';

class BuildButton extends StatelessWidget {
  final String? text; // Make text nullable
  final IconData? icon; // Add an optional icon
  final VoidCallback onTap;
  final Color? color;
  final Color textColor;
  final int flex;

  const BuildButton({
    super.key,
    this.text,
    this.icon, // Add to constructor
    required this.onTap,
    this.color,
    this.textColor = Colors.white, // Default to white
    this.flex = 1, // Default to flex 1
  }) : assert(text != null || icon != null,
            'Either text or icon must be provided'); // Ensure one is present

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex, // Use the flex property
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(24),
              backgroundColor: color ?? Colors.grey.shade800, // Your color logic
              foregroundColor: textColor, // Use the textColor property
              shape: RoundedRectangleBorder(
                  // Your button shape
                  borderRadius: BorderRadius.circular(10)),
            ),
            child: icon != null // Check if icon is provided
                ? Icon(icon, size: 25) // If yes, display icon
                : Text(
                    // If no, display text
                    text!, // We can use ! because of the assertion
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
      ),
    );
  }
}