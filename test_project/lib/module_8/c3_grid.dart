import 'package:flutter/material.dart';

class GridV extends StatelessWidget {
  const GridV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 25,
          mainAxisSpacing: 25
          ),
          itemCount: 20, 
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 150,
                width: 150,
                      
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 0, 255, 247),
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [
                      Colors.red,
                      Colors.red
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10,
                      offset: Offset(0, 10)
                    )
                  ]
                ),
                
                child: Column(
                  children: [
                    Icon(Icons.phone, size: 40, color: Colors.white,),
                    Text('Phone', style: TextStyle(fontSize: 20, color: Colors.white),)
                  ],
                ),
              ),
            );
          },
        )
      
    //   GridView.count(

    //     crossAxisCount: 3,

    //     padding: EdgeInsets.all(10),
    //     mainAxisSpacing: 10,
    //     crossAxisSpacing: 10,

    //     children: List.generate(
    //       10, 
    //       (index) => Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Container(
    //         height: 150,
    //             width: 150,
          
    //             decoration: BoxDecoration(
    //               color: const Color.fromARGB(255, 0, 255, 247),
    //               borderRadius: BorderRadius.circular(20),
    //               gradient: LinearGradient(
    //                 colors: [
    //                   Colors.red,
    //                   Colors.red
    //                 ],
    //                 begin: Alignment.topLeft,
    //                 end: Alignment.bottomRight
    //               ),
    //               boxShadow: [
    //                 BoxShadow(
    //                   color: Colors.grey,
    //                   blurRadius: 10,
    //                   offset: Offset(0, 10)
    //                 )
    //               ]
    //             ),
                
    //             child: Column(
    //               children: [
    //                 Icon(Icons.phone, size: 50, color: Colors.white,),
    //                 Text('Phone', style: TextStyle(fontSize: 25, color: Colors.white),)
    //               ],
    //             ),
    //       ),
    //     )),
    //     ),
    );
  }
}