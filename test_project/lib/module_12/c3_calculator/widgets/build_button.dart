import 'package:flutter/material.dart';

class BuildButton extends StatelessWidget {
  String text;
  Color? color;
  final VoidCallback onTap;

  BuildButton({
    super.key, 
    required this.text,
    required this.onTap,
    this.color
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      
      style: ElevatedButton.styleFrom(

        padding: EdgeInsets.all(24),
        backgroundColor: color ?? Colors.grey.shade800,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(10)
        )
      ), 
      child: Text(
        text,
        style: TextStyle(
          fontSize: 25,
          color: Colors.white
        ),
      )
    );
  }
}
