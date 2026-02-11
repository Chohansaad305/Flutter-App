import 'package:flutter/material.dart';

class MarginAndPadding extends StatelessWidget {
  const MarginAndPadding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text("Saad Chauhan Portfolio")),
      ),
      body: Container(
        margin: EdgeInsets.all(8.0),
        color: Colors.blueGrey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Welcome to Flutter",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Text(
      //     "Hello World",
      //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      //   ),
      // ),
    );
  }
}
