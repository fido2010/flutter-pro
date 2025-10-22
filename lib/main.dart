import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rocket App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Title'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Football_in_Bloomington%2C_Indiana%2C_1995.jpg/1200px-Football_in_Bloomington%2C_Indiana%2C_1995.jpg'),
              Image.asset('assets/images/lamine_yamal.jpg'),
              Image.asset('assets/images/lamine_yamal.jpg'),
              Image.asset('assets/images/lamine_yamal.jpg'),
            ],
          ),
        ),
        
      ),
    );
  }
}
