import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          "assets/animations/A2.json",
          errorBuilder: (context, error, stackTrace) =>
              const Text("Error loading animation"),
        ),
      ),
    );
  }
}
