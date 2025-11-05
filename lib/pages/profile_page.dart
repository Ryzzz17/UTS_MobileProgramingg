import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profil")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/logo.png'),
            ),
            const SizedBox(height: 20),
            const Text("Andi Pratama",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const Text("NIM: 12345678"),
            const Text("Email: andi@example.com"),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Prodi: Informatika  "),
                Text("Semester: 5"),
              ],
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back),
              label: const Text("Kembali ke Dashboard"),
            ),
          ],
        ),
      ),
    );
  }
}
