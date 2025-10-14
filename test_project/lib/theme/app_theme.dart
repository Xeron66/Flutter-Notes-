import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    
        primaryColor: Colors.deepPurple,
        primarySwatch: Colors.teal,

        brightness: Brightness.light,

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            )
          )
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey,),
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.orange,),
          ),

          hintStyle: TextStyle(
            color: Colors.grey,
          ),
        ),
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          )
        ),

        // scaffoldBackgroundColor: const Color.fromARGB(255, 212, 211, 211)
        
  );

  static final ThemeData darkTheme = ThemeData(
        primaryColor: Colors.purple,
        brightness: Brightness.dark,
        
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            )
          )
        ),
  );
}
