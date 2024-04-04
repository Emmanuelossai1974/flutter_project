import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> imageList = [
      'assets/images/forest.jpg',
      'assets/images/highway.jpg',
      'assets/images/leaf.jpg',
      'assets/images/mountains.jpg',
      'assets/images/road.jpg',
      'assets/images/trees.jpg',
    ];
    List<String> imageTitle = [
      'forest',
      'highway',
      'leaf',
      'mountains',
      'road',
      'trees'
    ];

    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;

    List<Widget> gridStuff = List.generate(6, (index) {
      return Container(
        width: Width,
        height: Height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          image: DecorationImage(
              image: AssetImage(imageList[index]), fit: BoxFit.cover),
        ),
        child: Center(
          child: Text(imageTitle[index],
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      blurRadius: 5,
                      color: Colors.black.withOpacity(0.5),
                      offset: Offset(5, 5),
                    )
                  ])),
        ),
      );
    });

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
              width: 60,
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
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.red,
        ),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 240,
            ),
            itemCount: gridStuff.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Container(height: 240, child: gridStuff[index]),
                ],
              );
            }),
      ),
      bottomNavigationBar:
          BottomNavigationBar(showUnselectedLabels: true, items: const [
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
