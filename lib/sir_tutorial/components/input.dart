import 'package:flutter/material.dart';

class InputLogic extends StatelessWidget {
  const InputLogic({super.key, required this.hintName, this.lable, this.icons });
  final String hintName;
  final String? lable;
  final Widget? icons;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: lable,
              hintText: hintName,
              suffix: icons,
            ),
          ),
        ),
      ),
    );
  }
}
