import 'package:flutter/material.dart';
import 'package:test_project/module_8/c2_form.dart';
import 'package:test_project/module_8/c3_container.dart';
import 'package:test_project/module_8/c3_grid.dart';
import 'package:test_project/module_9/c1_theme.dart';
import 'package:test_project/theme/app_theme.dart';
import 'home.dart';
import 'module_7/c2_button.dart';
import 'module_8/c1_input.dart';
import 'theme/app_theme.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Batch - 13",
      debugShowCheckedModeBanner: false,

      // home: Home(), //this was for the widget class stuff (Module 7)
      // home: ButtonGrp(), // Buttons (Module 8)
      // home: FlutterInput(), //TextFormFields (Module 8)
      // home: LogInPage(), //Forms (Module 8)
      // home: Class3(), //Container (Module 8)
      // home: GridV(), //Grid View (Module 8)
      //home: ThemeTest(), //Theme (Module 9) check theme folder
      
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,

      themeMode: ThemeMode.light,


    );
  }
}
