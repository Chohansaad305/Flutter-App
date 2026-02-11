import 'package:flutter/material.dart';

class MyTabScreen extends StatelessWidget {
  const MyTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Travel Application - Demo'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.directions_car, size: 100),
            Icon(Icons.directions_transit, size: 100),
            Icon(Icons.directions_bike, size: 100),
          ],
        ),
      ),
    );
  }
}
