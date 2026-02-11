import 'package:flutter/material.dart';

class CostumFontInAppTutoril extends StatelessWidget {
  const CostumFontInAppTutoril({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text("Saad Portfolio")),
      ),
      body: Center(
        child: Text(
          'Hello World',
          style: TextStyle(
            fontFamily: 'FontsMain',
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
