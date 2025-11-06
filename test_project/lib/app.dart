import 'package:flutter/material.dart';
import 'package:test_project/module_11/class2.dart';
import 'package:test_project/module_12/c1.dart';
import 'package:test_project/module_8/c2_dashboard.dart';
import 'package:test_project/module_8/c2_form.dart';
import 'package:test_project/module_8/c3_container.dart';
import 'package:test_project/module_8/c3_grid.dart';
import 'package:test_project/module_9/c1_theme.dart';
import 'package:test_project/module_9/c2_flist.dart';
import 'package:test_project/module_9/c2.3_stack.dart';
import 'package:test_project/module_9/c3_own_widget.dart';
import 'package:test_project/theme/app_theme.dart';
import 'home.dart';
import 'module_7/c2_button.dart';
import 'module_8/c1_input.dart';
import 'theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      
      home: LogInPage(), //Theme (Module 9) check theme folder
      initialRoute: '/login',
      
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      routes: {
        '/home': (context) => Home(),
        '/buttons': (context) => ButtonGrp(),
        '/login': (context) => LogInPage(),
        '/dashboard': (context) => DashBoard(),
        '/list': (context) => Flist(),
        '/stack': (context) => C2Stack(),
        '/widget': (context) => OwnWidget(),
        '/to-do': (context) => ToDo(),
        '/state-class': (context) => StateClass()
      },

      themeMode: ThemeMode.light,


    );
  }
}
