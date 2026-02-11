import 'package:flutter/material.dart';

class CardTutorial extends StatelessWidget {
  const CardTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          shadowColor: Colors.orange,
          elevation: 12,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("CardWigdet"),
          ),
        ),
      ),
    );
  }
}
