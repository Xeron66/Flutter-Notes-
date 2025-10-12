import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home Page"),
        backgroundColor: Colors.blue,
        shadowColor: Colors.red,
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Text(
                    "Row-",
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Row-",
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Row-",
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Row-",
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "This is home Page!",
              style: TextStyle(
                color: Colors.red,
                fontSize: 50,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              "This is home Page!",
              style: TextStyle(
                color: Colors.red,
                fontSize: 50,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              "This is home Page!",
              style: TextStyle(
                color: Colors.red,
                fontSize: 50,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              "This is home Page!",
              style: TextStyle(
                color: Colors.red,
                fontSize: 50,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              "This is home Page!",
              style: TextStyle(
                color: Colors.red,
                fontSize: 50,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              "This is home Page!",
              style: TextStyle(
                color: Colors.red,
                fontSize: 50,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              "This is home Page!",
              style: TextStyle(
                color: Colors.red,
                fontSize: 50,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              "This is home Page!",
              style: TextStyle(
                color: Colors.red,
                fontSize: 50,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              "This is home Page!",
              style: TextStyle(
                color: Colors.red,
                fontSize: 50,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              "This is home Page!",
              style: TextStyle(
                color: Colors.red,
                fontSize: 50,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              "This is home Page!",
              style: TextStyle(
                color: Colors.red,
                fontSize: 50,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              "This is home Page!",
              style: TextStyle(
                color: Colors.red,
                fontSize: 50,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              "This is home Page!",
              style: TextStyle(
                color: Colors.red,
                fontSize: 50,
                fontWeight: FontWeight.w100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
