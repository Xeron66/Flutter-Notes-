import 'package:flutter/material.dart';
import 'widgets/city_card.dart';

// Note: 2.3 means, previous class 2, and also used on class 3

class C2Stack extends StatelessWidget {
  const C2Stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stack')),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            CityCard(img: 'https://t4.ftcdn.net/jpg/01/36/15/53/360_F_136155386_TLEQLB3GqiSSKDpjcdZqAjLYaxQPCvrV.jpg', title: 'Bangladesh', rating: '5.0',),

            SizedBox(height: 10,),

            Stack(
              children: [
                Container(color: Colors.red, height: 200, width: 200),

                Positioned(
                  bottom: 50,
                  left: 10,
                  right: 10,
                  top: 10,
                  child: Container(
                    color: Colors.green,
                    height: 150,
                    width: 180,
                  ),
                ),

                Positioned(
                  top: 20,
                  right: 20,
                  bottom: 20,

                  child: Container(
                    color: Colors.purple,
                    height: 100,
                    width: 150,
                  ),
                ),
              ],
            ),

            SizedBox(height: 10,),

            Stack(
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                    'https://imgcdn.stablediffusionweb.com/2024/9/12/020b86a2-61cf-47bd-a862-91639751f675.jpg',
                  ),
                ),
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: Container(

                    width: 20,
                    height: 20,
                    
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1)
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}


