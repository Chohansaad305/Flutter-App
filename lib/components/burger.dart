import 'package:flutter/material.dart';

class Burger extends StatelessWidget {
  const Burger({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          'Burger Page',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      // ========= BOTTOM NAVIGATION BAR =========
      // bottomNavigationBar: BottomNavigation(),
      // ========= BOTTOM NAVIGATION BAR END =========
    );
  }
}
