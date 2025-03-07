import 'package:flutter/material.dart';
import 'signuppage.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                      'Log In',
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
                  const Text(
                    'Welcome',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                    style: TextStyle(color: Colors.black54),
                  ),
                  const SizedBox(height: 20),
                  const Text('Email or Mobile Number',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'example@example.com',
                      filled: true,
                      fillColor: Colors.amber.shade100,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text('Password',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 5),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: '************',
                      filled: true,
                      fillColor: Colors.amber.shade100,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      suffixIcon: IconButton(
                        onPressed: () {
                          
                        },
                        icon: const Icon(Icons.visibility_off, color: Colors.red),
                      ),
                      //const Icon(Icons.visibility_off, color: Colors.red),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('Forget Password',
                          style: TextStyle(color: Colors.red)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        padding:
                            const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const HomeScreen()),
                        );
                      },
                      child: const Text('Log In',
                          style: TextStyle(fontSize: 16, color: Colors.white)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Center(
                      child: Text('or sign up with',
                          style: TextStyle(color: Colors.black54))),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.g_mobiledata,
                            size: 40, color: Colors.red),
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpScreen()),
                        );
                      },
                      child: const Text("Don't have an account? Sign Up",
                          style: TextStyle(color: Colors.red)),
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
}
