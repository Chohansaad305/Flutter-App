import 'package:flutter/material.dart';

class CircleAvatarTutorial extends StatelessWidget {
  const CircleAvatarTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text("Saad Portfolio")),
      ),
      body: Center(
        child: CircleAvatar(
          backgroundColor: Colors.green,
          radius: 100,
          child: Center(
            child: SizedBox(
              width: 150,
              height: 100,
              child: Column(
                children: [
                  SizedBox(
                    width: 70,
                    height: 70,
                    child: Image.asset('assets/images/image.png'),
                  ),
                  Text("Name", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
