import 'package:flutter/material.dart';

class ListTilePractice extends StatefulWidget {
  const ListTilePractice({super.key});

  @override
  State<ListTilePractice> createState() => _ListTilePracticeState();
}

class _ListTilePracticeState extends State<ListTilePractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListTile(
        title: Text('Demo ListTile'),
        subtitle: Text('Usage of ListTile'),
        trailing: Icon(Icons.favorite, color: Colors.red),
      ),
    );
  }
}
