import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Lottie.network(
              'https://lottie.host/31b0c1dc-5ff1-45df-b96c-fa1200c8c554/QTcdtW0332.json')),
    );
  }
}
