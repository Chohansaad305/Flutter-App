import 'package:flutter/material.dart';
// import 'package:flutter_firstproject/sir_tutorial/components/input.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 600,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 203, 175, 63),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "LOGIN YOUR ACCOUNT",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text("Please login your account", style: TextStyle(fontSize: 16)),
              // inputlogic(
              //   lable: "Name",
              //   hintName: "Enter Your Name",
              //   icons: Icons.person,
              // ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Name",
                    hintText: "Enter Your Name",
                    suffix: Icon(Icons.person),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Email",
                    hintText: "Enter Your Email",
                    suffix: Icon(Icons.email),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Password",
                    hintText: "Enter Your Password",
                    suffix: Icon(Icons.lock),
                  ),
                  obscureText: true,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(55, 255, 255, 255),
                  fixedSize: Size(150, 40),
                ),
                child: Text("Login", style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
