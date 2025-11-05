import 'package:flutter/material.dart';
import 'profile_page.dart';

class DashboardPage extends StatelessWidget {
  final String username;

  const DashboardPage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard Aplikasi"),
        actions: const [Icon(Icons.notifications)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Halo, $username 👋",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Image.asset("assets/images/logo.png", height: 120),
              const SizedBox(height: 20),
              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  _menuItem(context, Icons.person, "Profil", () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilePage()),
                    );
                  }),
                  _menuItem(context, Icons.list, "Data", () {}),
                  _menuItem(context, Icons.settings, "Pengaturan", () {}),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _menuItem(
      BuildContext context, IconData icon, String label, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
              radius: 28,
              backgroundColor: Colors.blue[100],
              child: Icon(icon, color: Colors.blue, size: 28)),
          const SizedBox(height: 8),
          Text(label, style: const TextStyle(fontSize: 14))
        ],
      ),
    );
  }
}
