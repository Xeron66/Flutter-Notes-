import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First APP",
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
      ),

      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatefulWidget {
  const HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  int _currentIndex = 0;

  void _showMessage(BuildContext context) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("Clicked!")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APP BAR
      appBar: AppBar(
        title: Text("App Bar!"),
        
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
        
        centerTitle: true,
        
        elevation: 200,
        
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       _showMessage(context);
        //     },
        //     icon: Icon(Icons.search_rounded),
        //   ),
        // ],
        
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      
      // Left Drawer Or Drawer
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Hello"),
              accountEmail: Text("Hello@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://wallpapers.com/images/thumbnail/cool-profile-picture-awled9dwo4qq2yv2.jpg",
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text("Add"),
              onTap: (){
                Navigator.pop(context);
              }

            ),
          ],
        ),
      ),

      // Right Drawer Or End Drawer
      endDrawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Hello"),
              accountEmail: Text("Hello@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://wallpapers.com/images/thumbnail/cool-profile-picture-awled9dwo4qq2yv2.jpg",
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text("Add"),
              onTap: (){
                Navigator.pop(context);
              }

            ),
          ],
        ),
      ),

      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _showMessage(context);
          },
        child: Icon(Icons.add),
      ),
      // BODY
      body: Text("Body!"),

      // Bottom Nav BAR
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          _showMessage(context);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call"),
          BottomNavigationBarItem(
            icon: Icon(Icons.business_sharp),
            label: "Business",
          ),
        ],
      ),
    );
  }
}
