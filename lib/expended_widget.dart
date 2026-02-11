import 'package:flutter/material.dart';

class Expendedwidget extends StatelessWidget {
  const Expendedwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text("Saad Chauhan Portfolio")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(flex: 1, child: Container(height: 100, color: Colors.blue)),
          Expanded(
            flex: 3,
            child: Container(height: 100, color: Colors.orange),
          ),
          Expanded(
            flex: 4,
            child: Container(height: 100, color: Colors.blueGrey),
          ),
          Expanded(flex: 5, child: Container(height: 100, color: Colors.pink)),
          Expanded(flex: 6, child: Container(height: 100, color: Colors.green)),
        ],
      ),
    );
  }
}
