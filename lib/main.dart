import 'dart:async';
import 'package:flutter/material.dart';
import 'package:food_app/onbording.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      // Navigate to Home Screen
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const OnboardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange,
        body: Center(
          child: Image.asset(
              'assets/images/splah.png'), 
        ),
      ),
    );
  }
}
