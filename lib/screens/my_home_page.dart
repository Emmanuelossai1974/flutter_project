import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> imageList = [
    Image.asset('assets/images/forest.jpg'),
    Image.asset('assets/images/highway.jpg'),
    Image.asset('assets/images/leaf.jpg'),
    Image.asset('assets/images/mountains.jpg'),
    Image.asset('assets/images/road.jpg'),
    Image.asset('assets/images/trees.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Home Page',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
            SizedBox(
              width: 120,
            ),
            ElevatedButton(
              onPressed: null,
              child: Icon(Icons.notification_add, color: Colors.white),
            ),
            Icon(Icons.settings),
          ],
        ),
      ),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          mainAxisSpacing: 5,
          shrinkWrap: true,
          crossAxisCount: 2,
          children: List.generate(6, (index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(height: 200, child: imageList[index]),
              ],
            );
          }),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            backgroundColor: Colors.red, icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.search),
            label: 'Search'),
        BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.settings),
            label: 'Settings'),
        BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.person),
            label: 'Profile'),
      ]),
    );
  }
}
