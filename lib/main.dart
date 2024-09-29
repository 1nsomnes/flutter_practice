import 'package:flutter/material.dart';
import 'heat_map.dart';

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
          title: const Text(
            'ADDICTION BEATER',
            style: TextStyle(fontFamily: "RobotoLight"),
          ),
          backgroundColor: Colors.grey[900],
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          actions: [
            IconButton(icon: Icon(Icons.settings), onPressed: () {}),
          ],
        ),
        backgroundColor: Colors.grey[900],
        body: Center(child: MyHeatMap()),
      ),
    );
  }
}
