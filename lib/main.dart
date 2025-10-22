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
      title: 'Rocket app title',
      home: Scaffold(
        appBar: AppBar(title: const Text('Rocket App'), centerTitle: true),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome!',
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: 250,
                  height: 250,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/rocket.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              FilledButton(
                onPressed: () {
                  // Action when button is pressed
                },
                child: const Text('Login'),
              ),
              SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {
                  // Action when button is pressed
                },
                child: const Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
