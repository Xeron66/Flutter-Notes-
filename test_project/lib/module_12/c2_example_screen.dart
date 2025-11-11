import 'package:flutter/material.dart';

class ExampleScreen extends StatefulWidget {
  const ExampleScreen({super.key});

  @override
  State<ExampleScreen> createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {
  bool isPasswordShow = false;
  bool isFav = false;

  showPassword() {
    setState(() {
      isPasswordShow = !isPasswordShow;
    });
  }

  toggleFav() {
    setState(() {
      isFav = !isFav;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea( 
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                obscureText: isPasswordShow,
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      isPasswordShow ? Icons.remove_red_eye : Icons.visibility_off
                    ),
                    onPressed: (){
                      showPassword();
                    }, 
                  )
                ),
              ),

              IconButton(
                onPressed: toggleFav, 
                icon: Icon(
                  isFav ? Icons.favorite : Icons.favorite_border,
                  size: 100,
                  color: Colors.red,
                )
              )
            ],  
          ),
        )
      ),
    );
  }
}