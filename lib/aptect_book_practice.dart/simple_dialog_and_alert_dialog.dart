import 'package:flutter/material.dart';

class SimpleDailogandAlertdailog extends StatefulWidget {
  const SimpleDailogandAlertdailog({super.key});

  @override
  State<SimpleDailogandAlertdailog> createState() =>
      _SimpleDailogandAlertdailogState();
}

class _SimpleDailogandAlertdailogState
    extends State<SimpleDailogandAlertdailog> {
  void _showAlertDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Test Dialog'),
          content: const Text('This is Alert Dialog'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Dialog')),
      body: Center(
        child: ElevatedButton(
          onPressed: _showAlertDialog,
          child: const Text('Show Dialog'),
        ),
      ),
    );
  }
}
