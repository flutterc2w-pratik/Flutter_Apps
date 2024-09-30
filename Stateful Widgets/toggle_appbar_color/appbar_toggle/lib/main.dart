import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToggleAppBar(),
    );
  }
}

class ToggleAppBar extends StatefulWidget {
  const ToggleAppBar({super.key});
  @override
  State<ToggleAppBar> createState() => _ToggleAppBarState();
}

class _ToggleAppBarState extends State<ToggleAppBar> {
  bool changecolor = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toggle AppBar"),
        backgroundColor: (changecolor) ? Colors.blue : Colors.red,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: (changecolor) ? Colors.red : Colors.amber,
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        if (changecolor) {
          changecolor = false;
        } else {
          changecolor = true;
        }

        setState(() {
          
        });
      },
      child: const Text("Change"),
      ),
    );
  }
}
