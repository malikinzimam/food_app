import 'package:flutter/material.dart';
import 'login_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.amber.shade200,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.red),
                    onPressed: () => Navigator.pop(context),
                  ),
                  const Center(
                    child: Text(
                      'New Account',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildInputField('Full Name', 'example@example.com'),
                  _buildInputField('Password', '************', isPassword: true),
                  _buildInputField('Email', 'example@example.com'),
                  _buildInputField('Mobile Number', '+ 123 456 789'),
                  _buildInputField('Date of Birth', 'DD / MM / YYYY'),
                  const SizedBox(height: 10),
                  const Center(
                    child: Text(
                      'By continuing, you agree to Terms of Use and Privacy Policy.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12, color: Colors.red),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
                      },
                      child: const Text('Sign Up', style: TextStyle(fontSize: 16, color: Colors.white)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Center(child: Text('or sign up with', style: TextStyle(color: Colors.black54))),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.g_mobiledata, size: 40, color: Colors.red),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.facebook, size: 40, color: Colors.red),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text("Already have an account? Log in", style: TextStyle(color: Colors.red)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField(String label, String hint, {bool isPassword = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),
          TextField(
            obscureText: isPassword,
            decoration: InputDecoration(
              hintText: hint,
              filled: true,
              fillColor: Colors.amber.shade100,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
              suffixIcon: isPassword ? const Icon(Icons.visibility_off, color: Colors.red) : null,
            ),
          ),
        ],
      ),
    );
  }
}
