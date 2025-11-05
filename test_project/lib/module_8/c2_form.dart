import 'package:flutter/material.dart';
import 'package:test_project/home.dart';
import 'package:test_project/module_8/c2_dashboard.dart';
import 'package:test_project/module_8/c2_home2.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    TextEditingController phoneController = TextEditingController();
    TextEditingController passWordController = TextEditingController();

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("LogIn Page"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Logo_of_YouTube_%282015-2017%29.svg/1280px-Logo_of_YouTube_%282015-2017%29.svg.png'),
            Text('Log in with phone and password'),
        
            Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
        
                    // Phonenumber form field using TextFormField
                    TextFormField(
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
        
                      decoration: InputDecoration(
                        hintText: 'Phone Number',
                        hintStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.grey
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                        )
                      ),
                      validator: (value){
                        if (value == null || value.isEmpty) {
                          return 'Please enter valid phone number!';
                        } else if (value.length != 11) {
                          return 'Please enter valid phone number!';
                        }
                        else {
                          return null;
                        }
                      },
                    ),
                
                    SizedBox(height: 20,),
                    // Password Form field using TextFormField
                    TextFormField(
                      controller: passWordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.grey
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                        )
                      ),
        
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter valid password';
                        } else if (value.length <= 6 ){
                          return 'Password must be at least 6 characters';
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 20,),
                    // Submit button
                    SizedBox(
                      width: 300,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white
                        ),
                        onPressed: (){
                          if (formKey.currentState!.validate()){
                            Navigator.pushReplacement(
                              context, 
                              MaterialPageRoute(builder: (context)=> Home()));
                          }
                        }, 
                        child: Text('Submit')
                        ),
                    ),
        
                    ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeTwo()));
                      }, 
                    child: Text('Home2')
                    ),
        
                    // ElevatedButton(
                    //   onPressed: (){
                    //     Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoard(phone: phoneController.text)));
                    //   }, 
                    // child: Text('DashBoard')
                    // ),
        
                    ElevatedButton(
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, '/buttons');
                      }, 
                    child: Text('Btns')
                    ),
        
                    ElevatedButton(
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, '/dashboard', arguments: {
                          'phone': phoneController.text,
                          'name': 'Foyez'
                        });
                      }, 
                    child: Text('Dashboard')
                    ),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, '/list');
                      }, 
                    child: Text('List View')
                    ),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, '/stack');
                      }, 
                    child: Text('Stack')
                    ),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, '/widget');
                      }, 
                    child: Text('Widget')
                    ),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, '/to-do');
                      }, 
                    child: Text('ToDo')
                    ),
                  ],
                ),
              ),
            )
          
          ],
        ),
      ), 
    );
  }
}