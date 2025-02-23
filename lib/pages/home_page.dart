import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Curved Animated Header
          ClipPath(
            clipper: CurveClipper(),
            child: Container(
              height: 300,
              color: Colors.deepPurple,
              alignment: Alignment.center,
              child: Lottie.asset(
                'assets/animations/Sunny.json',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const Text("Error loading animation"),
              ),
            ),
          ),

          // Weather Forecast
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: const [
                WeatherRow(
                    day: 'Monday', temperature: '18°', icon: Icons.cloud),
                WeatherRow(
                    day: 'Tuesday', temperature: '20°', icon: Icons.wb_sunny),
                WeatherRow(
                    day: 'Wednesday',
                    temperature: '15°',
                    icon: Icons.nights_stay),
                WeatherRow(
                    day: 'Thursday',
                    temperature: '22°',
                    icon: Icons.cloud_queue),
              ],
            ),
          ),

          // Bottom Navigation
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.home, color: Colors.white, size: 30),
                Icon(Icons.search, color: Colors.white70, size: 30),
                Icon(Icons.umbrella, color: Colors.white70, size: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Custom Clipper for Curved Header
class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

// Weather Row Widget
class WeatherRow extends StatelessWidget {
  final String day;
  final String temperature;
  final IconData icon;

  const WeatherRow({
    super.key,
    required this.day,
    required this.temperature,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(day, style: const TextStyle(fontSize: 18)),
          Row(
            children: [
              Text(temperature, style: const TextStyle(fontSize: 18)),
              const SizedBox(width: 10),
              Icon(icon, size: 24),
            ],
          ),
        ],
      ),
    );
  }
}
