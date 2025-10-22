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
      title: 'Rocket App',
      home: Scaffold(
        appBar: AppBar(
          actions: [
            MenuAnchor(
              builder:
                  (BuildContext context, MenuController controller, Widget? child) {
                return IconButton(
                  onPressed: () {
                    if (controller.isOpen) {
                      controller.close();
                    } else {
                      controller.open();
                    }
                  },
                  icon: const Icon(Icons.more_horiz),
                  tooltip: 'Show menu',
                );
              },
              menuChildren: [
                MenuItemButton(
                  child: Row(
                    children: [
                      const Icon(Icons.person),
                      SizedBox(width: 8),
                      const Text('Profile'),
                    ],
                  ),
                  onPressed: () {
                    print('Selected: Profile');
                  },
                ),
                MenuItemButton(
                  child: Row(
                    children: [
                      const Icon(Icons.logout),
                      SizedBox(width: 8),
                      const Text('Logout'),
                    ],
                  ),
                  onPressed: () {
                    print('Selected: Logout');
                  },
                ),
                MenuItemButton(
                  child: Row(
                    children: [
                      const Icon(Icons.settings),
                      SizedBox(width: 8),
                      const Text('Settings'),
                    ],
                  ),
                  onPressed: () {
                    print('Selected: Settings');
                  },
                ),
              ],
            ),
          ],
          title: const Text('Futbol'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () { print('Kick button pressed'); },
                child: const Text('Kick'),
              ),
              const SizedBox(height: 8),
              Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Football_in_Bloomington%2C_Indiana%2C_1995.jpg/1200px-Football_in_Bloomington%2C_Indiana%2C_1995.jpg'),
              const SizedBox(height: 8),
              Image.asset('assets/images/lamine_yamal.jpg'),
              const SizedBox(height: 8),
              Image.asset('assets/images/lamine_yamal.jpg'),
              const SizedBox(height: 8),
              Image.asset('assets/images/lamine_yamal.jpg'),
            ],
          ),
        ),
        
      ),
    );
  }
}
