import 'package:flutter/material.dart';

class MyHomePageState extends StatefulWidget {
  const MyHomePageState({super.key});

  @override
  State<MyHomePageState> createState() => _MyHomePageStateState();
}

class _MyHomePageStateState extends State<MyHomePageState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You Have pushed the button this many times:'),
            Text(
              'Container Demo',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              height: 200,
            ),
            Container(
              foregroundDecoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(100),
                boxShadow: const [
                  BoxShadow(color: Colors.black, blurRadius: 20.0),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(color: Colors.black, blurRadius: 20.0),
                ],
              ),
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
