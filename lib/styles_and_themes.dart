import 'package:flutter/material.dart';
import 'package:flutter_firstproject/UI-helper/until.dart';

class StylesAndThemes extends StatelessWidget {
  const StylesAndThemes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text("Saad Portfolio")),
      ),
      body: Column(
        children: [
          Text(
            "HeadLineSmall",
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.copyWith(color: Colors.orange),
          ),
          Text("TitleSmall", style: Theme.of(context).textTheme.titleSmall),
          Text(
            "util file se connect mystyle11",
            style: myTextStyle11(fontWeight: FontWeight.bold),
          ),
          Text("util file se connect mystyle16", style: myTextStyle16()),
        ],
      ),
    );
  }
}
