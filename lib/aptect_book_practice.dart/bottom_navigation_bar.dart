import 'package:flutter/material.dart';

class MyStatefullWidget extends StatefulWidget {
  const MyStatefullWidget({super.key});

  @override
  State<MyStatefullWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyStatefullWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(title: Text('Scaffold Example')),
      body: Center(child: Text('Hi, happy learning Flutter!!!')),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.camera), label: "Camera"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {}),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: Drawer(
        elevation: 20.0,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Flutter Learning"),
              accountEmail: Text("Flutterlearning@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text("Ross"),
              ),
            ),
            ListTile(title: Text("Inbox"), leading: Icon(Icons.mail)),
            Divider(height: 0.1),
            ListTile(
              title: Text("Primary"),
              leading: Icon(Icons.inbox),
            ),
            ListTile(
              title: Text("Social"),
              leading: Icon(Icons.people),
            ),
            ListTile(
              title: Text("Promotions"),
              leading: Icon(Icons.local_offer),
            ),
          ],
        ),
      ),
    );
  }
}
