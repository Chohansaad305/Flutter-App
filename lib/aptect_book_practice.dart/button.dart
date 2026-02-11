import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({super.key});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Examples'),
        centerTitle: true,
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              debugPrint(value);
            },
            itemBuilder: (context) => const [
              PopupMenuItem(value: 'option1', child: Text('Option 1')),
              PopupMenuItem(value: 'option2', child: Text('Option 2')),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("Raised Button"),
            ),
            const SizedBox(height: 16),
            ElevatedButton(onPressed: () {}, child: const Icon(Icons.edit)),
            Center(
              child: Text(
                'TextField',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            TextField(decoration: InputDecoration(hintText: 'TextField')),
            Center(
              child: Text(
                'Radio Buttons',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
