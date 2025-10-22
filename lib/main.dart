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
      title: 'Flutter Filip',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Welcome to Flutter Filip',
            style: TextStyle(color: Colors.amber, fontSize: 40.0),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: const [
              Center(child: Image(image: AssetImage('images/rocket.png'))),
              Center(child: Image(image: AssetImage('images/rocket.png'))),
              Center(child: Image(image: AssetImage('images/rocket.png'))),
              Text("nazdar"),
            ],
          ),
        ),
      ),
    );
  }
}
