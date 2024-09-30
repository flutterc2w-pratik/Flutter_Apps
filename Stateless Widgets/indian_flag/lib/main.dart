import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        
        appBar: AppBar(
          title: const Text("Indian Flag"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          
        ),

        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
            Container(
              height: 528,
              width: 15,
              color: Colors.black,
            ),
            Column(
               children: [
                const Padding(padding: EdgeInsets.only(top: 127)),
              Container(
                width: 300,
                height: 50,
                color: Colors.orange,
              ),
              Container(
                width: 300,
                height: 50,
                color: Colors.white,
                child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Ashoka_Chakra.svg/2048px-Ashoka_Chakra.svg.png"),               
                
              ),
              Container(
                width: 300,
                height: 50,
                color: Colors.green,
              ),
            ],
            ),
          ],),
        ),
        
        ),
      );
    
  }
}
