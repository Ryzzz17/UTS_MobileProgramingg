import 'package:flutter/material.dart';
import '../widgets/custom_textfield.dart';
import 'dashboard_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  void _login() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => DashboardPage(username: emailController.text),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png', height: 100),
              const SizedBox(height: 20),
              const Text(
                "Selamat Datang",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "Silakan login untuk melanjutkan",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: emailController,
                label: "Email / Username",
                icon: Icons.person,
                validator: (value) =>
                    value!.isEmpty ? "Email tidak boleh kosong" : null,
              ),
              const SizedBox(height: 10),
              CustomTextField(
                controller: passwordController,
                label: "Password",
                icon: Icons.lock,
                isPassword: true,
                validator: (value) =>
                    value!.isEmpty ? "Password tidak boleh kosong" : null,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: _login,
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 45)),
                child: const Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
