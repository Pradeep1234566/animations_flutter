import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage4 extends StatelessWidget {
  const IntroPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow, // Set a cheerful background color here
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/animations/Happy.json"),
            SizedBox(height: 20),
            Text(
              'See you then at Saturday evening',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
