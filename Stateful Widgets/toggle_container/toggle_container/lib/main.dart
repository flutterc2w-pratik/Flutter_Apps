import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToggleConatiner(),
    );
  }
}

class ToggleConatiner extends StatefulWidget {
  const ToggleConatiner({super.key});

  @override
  State<ToggleConatiner> createState() => _ToggleContainerState();
}

class _ToggleContainerState extends State<ToggleConatiner> {
  bool changeColor = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toggle Container"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              color: (changeColor) ? Colors.black : Colors.red,
              shape: BoxShape.circle
          ),
          
          
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        if (changeColor == true) {
          changeColor = false;
        } else {
          changeColor = true;

        }

        setState(() {
          
        });
      },
      backgroundColor: Colors.blue,
      child: const Text("Change", style: TextStyle(color: Colors.orange)),
      
      ),
    );
  }
}
