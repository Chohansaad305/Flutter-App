import 'package:flutter/material.dart';
import 'package:flutter_firstproject/myApp/application.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text('Profile', style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Top Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 30),
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                children: const [
                  CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Jhone Doe',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'johndoe@example.com',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            /// Profile Options
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  buildProfileTile(Icons.person_outline, "Edit Profile"),
                  buildProfileTile(Icons.lock_outline, "Change Password"),
                  buildProfileTile(Icons.settings_outlined, "Settings"),
                  buildProfileTile(Icons.help_outline, "Help & Support"),
                  buildProfileTile(Icons.logout, "Logout", isLogout: true),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomBar(selectedIndex: 2),
    );
  }

  Widget buildProfileTile(
    IconData icon,
    String title, {
    bool isLogout = false,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: ListTile(
        leading: Icon(icon, color: isLogout ? Colors.red : Colors.black87),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: isLogout ? Colors.red : Colors.black87,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          // Add navigation here
        },
      ),
    );
  }
}
