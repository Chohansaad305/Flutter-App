import 'package:flutter/material.dart';
class ContainerDecoration extends StatelessWidget {
  const ContainerDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text("Saad Chauhan Portfolio")),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue.shade300,
              // borderRadius: BorderRadius.circular(11),
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(20),
              //   topRight: Radius.circular(0),
              //   bottomLeft: Radius.circular(0),
              //   bottomRight: Radius.circular(20),
              // ),
              border: Border.all(color: Colors.black, width: 3),
              boxShadow: [
                BoxShadow(
                  color: Colors.teal.shade900,
                  blurRadius: 10,
                  spreadRadius: 7,
                ),
              ],
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
