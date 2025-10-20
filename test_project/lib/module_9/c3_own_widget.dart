import 'package:flutter/material.dart';
import 'package:test_project/module_9/c2.3_stack.dart';
import 'package:test_project/module_9/c3_hero_page.dart';
import 'package:test_project/module_9/widgets/city_card.dart';

class OwnWidget extends StatelessWidget {
  const OwnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CityCard(
                    img:
                        'https://c.ekstatic.net/shared/images/destination/v1/airports/LON/480x480.jpg',
                    title: 'London',
                    rating: '4.8',
                  ),
                  CityCard(
                    img:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzYo7mEkKUj2lhATOIjVPhJPrKxqhRiM4_wQ&s',
                    title: 'Dhaka',
                    rating: '4.5',
                  ),
                  CityCard(
                    img:
                        'https://res.cloudinary.com/dtljonz0f/image/upload/c_auto,ar_4:3,w_3840,g_auto/f_auto/q_auto/v1/shutterstock_2414539851_ss_non-editorial_dcx0bm?_a=BAVAZGE70',
                    title: 'Dubai',
                    rating: '4.9',
                  ),
                ],
              ),
            ),

            // Animated transition using navigator
            // Example 1:
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (
                      context, animation, secondaryAnimation) => C2Stack(),
                      // using transition builder for navigating to another page
                      transitionsBuilder: (context, animation, secondaryAnimation, child){
                        const begin = Offset(1, 0);
                        const end = Offset.zero;
                        const curve = Curves.ease;
                        var tween = Tween(begin: begin, end: end,).chain(CurveTween(curve: curve));
                        return SlideTransition(position: animation.drive(tween), child: child,);
                      },
                  ),
                );
              },
              child: Text('Previous Class'),
            ),

            // Example 2:
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HeroPage()));
              },
              child: Hero(
                tag: 'PreviousClass', 
                child: Text('Previous Class')
                ),
            ),
          ],
        ),
      ),
    );
  }
}
