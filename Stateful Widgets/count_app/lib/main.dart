import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CountApp(),
    );
  }
}

class CountApp extends StatefulWidget {
  const CountApp({super.key});

  @override
  State createState() => _CountAppState();
}

class _CountAppState extends State {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Count App"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Text("$count",
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          setState(() {});
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
        
      ),
    );
  }
}
