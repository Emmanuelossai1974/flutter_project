import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  final String name = 'Todd';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(color: Colors.blue),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: AssetImage("assets/images/tree.jpg"),
              ),
              Center(
                child: Text(
                  '$name',
                  style: TextStyle(color: Colors.red, fontSize: 22),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
