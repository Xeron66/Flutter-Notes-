import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final String img, title, rating;
  CityCard({super.key, required this.img, required this.title, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Stack(
        children: [
          Container(
      
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
      
              image: DecorationImage(
                image: NetworkImage(img),
                )
            ),
            child: Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.all(8),
       
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black54,
                  ]
                  )
              ),
            ),
          ),
          
          Positioned(
            top: 10,
            left: 50,
            right: 15,
      
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: (){}, 
                child: Text('⭐ $rating', style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),)
                ),
                SizedBox(),
                IconButton(onPressed: (){}, icon: Icon(Icons.favorite, color: Colors.red,))
                
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            left: 50,
            right: 15,
      
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20
                ),),
                SizedBox(),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}