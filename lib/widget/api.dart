import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.pinkAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AspectRatio(
            aspectRatio: 1, // Adjust the aspect ratio as needed
            child: Lottie.asset("assets/animations/Boy.json"),
          ),
          SizedBox(
              height: 20), // Add some space between the animation and the text
          Text(
            "This week me ",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white, // Changed text color to white
              fontStyle: FontStyle.italic, // Added italic style
            ),
          ),
        ],
      ),
    );
  }
}
