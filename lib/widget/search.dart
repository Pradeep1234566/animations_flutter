import 'package:animations/widget/IntroPage4.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

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
            child: Lottie.asset("assets/animations/Date.json"),
          ),
          SizedBox(
              height: 20), // Add some space between the animation and the text
          Text(
            "Go out on a date",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white, // Changed text color to white
              fontStyle: FontStyle.italic, // Added italic style
            ),
          ),
          SizedBox(
              height: 20), // Add some space between the text and the button
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IntroPage4()),
              );
            },
            child: Text("Yes"),
          ),
        ],
      ),
    );
  }
}


