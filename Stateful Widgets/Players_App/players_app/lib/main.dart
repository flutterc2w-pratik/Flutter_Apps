import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PlayerApp(),
    );
  }
}

class PlayerApp extends StatefulWidget {
  const PlayerApp({super.key});

  @override
  State<PlayerApp> createState() => _PlayerAppState();
}

class _PlayerAppState extends State<PlayerApp> {
  List playerPics = [
    "https://th.bing.com/th/id/OIP.Ipq9m-7T4rk6FqgKhwX8KQHaEK?rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIP.4z2feTp_Mw25d-lmn1wMdQAAAA?rs=1&pid=ImgDetMain",
    "https://wallpapercave.com/wp/wp4419289.jpg",
    "https://th.bing.com/th/id/OIP.ikEJlADRzhbDrLoTOpF2LQHaH-?w=551&h=594&rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIP.41M7j42omEF19aDSXLUFXgHaEK?rs=1&pid=ImgDetMain",
  ];

  int playerindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PlayersApp"),
      ),
      body: Center(
        child: SizedBox(
          height: 300,
          width: 300,
          child: Image.network(playerPics[playerindex]),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        if (playerindex < playerPics.length - 1) {
          playerindex++;
        } else {
          playerindex = 0;
        }
        setState(() {
          
        });
      },
      child: const Icon(Icons.forward),
      ),
    );
  }
}
