import 'package:flutter/material.dart';

class FlutterInput extends StatelessWidget {
  const FlutterInput({super.key});

  @override
  Widget build(BuildContext context) {
    
    // creating an obj of TextEditingController
    TextEditingController phoneController = TextEditingController();
    TextEditingController passWordController = TextEditingController();
    
    return Scaffold(

      appBar: AppBar(
        title: Text("Flutter Input"),
        backgroundColor: Colors.blue,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Adding a random image from Internet using NetworkImage
            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTed66neNwtwrM7rAlINxb8KiD9Dc5zKMNkgQ&s'),
            Image.asset('asset/YT.png'),
            SizedBox(height: 10,),
            
            // TextField is used to promt the user to provide input!
            TextField(
              controller: phoneController,

              // Only allowing phone number type in the keyboard!
              keyboardType: TextInputType.phone,
              maxLength: 11,
        
              // Cursor stufs
              cursorColor: Colors.orange,
        
              decoration: InputDecoration(
                // Prefix meaning front!
                // Suffix meaning back!
                // A phone icon
                prefixIcon: Icon(Icons.phone),
                suffixIcon: Icon(Icons.check),
                
                // Border Stuffs
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey)
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.blue)
                ),
        
                // Filling the text Box with a color
                filled: true,
                fillColor: Colors.grey.shade300,
        
                contentPadding: EdgeInsets.all(20),
                
                // Hint inside the Texbox
                hintText: 'Enter your phone number',
                hintStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
        
                // Hint outside i.e., below the TextBox
                helperText: '017xxx',
                helperStyle: TextStyle(
                  color: Colors.blue,
                ),
        
                // Label of the TextBox
                
                labelText: 'Phone Number',
                labelStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
            ),
            TextField(
              controller: passWordController,
              // To hide password type texts use ObsecureText
              obscureText: true,

              decoration: InputDecoration(
                // Prefix meaning front!
                // Suffix meaning back!
                // A phone icon
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
                
                // Border Stuffs
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey)
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.blue)
                ),
                
                // Hint inside the Texbox
                hintText: 'Enter Password',
                hintStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
        
                // Hint outside i.e., below the TextBox
                helperText: '017xxx',
                helperStyle: TextStyle(
                  color: Colors.blue,
                ),
        
                // Label of the TextBox
                labelText: 'Password',
                labelStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  print('Phone: ${phoneController.text}, \n Password: ${passWordController.text}');
                  if(passWordController.text.length < 6 ){
                    print('Password Must be min 8!');
                  }
                }, 
                child: Text('Submit'),
                )
              )
          ],
        ),
      ),
    );
  }
}