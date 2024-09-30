import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Row Container"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.cyan,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.greenAccent,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.pinkAccent,
              ),
          
            ],
          ),
        ),
      ),
    );
  }
}
