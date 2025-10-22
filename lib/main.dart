import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Filip',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Welcome to Flutter Filip',
            style: TextStyle(color: Colors.amber, fontSize: 40.0,),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(child: Image.asset('images/rocket.png'),),
      ),
    );
  }
}
