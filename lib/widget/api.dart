import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchWeather() async {
  final response = await http.get(
    Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=London&appid=87cf8f6bff87e4721cf943cdad00595a&units=metric'),
  );

  if (response.statusCode == 200) {
    // If the server returns a 200 OK response, parse the JSON.
    final Map<String, dynamic> data = json.decode(response.body);
    print('Weather in London: ${data['main']['temp']}°C');
  } else {
    // If the server did not return a 200 OK response, throw an exception.
    throw Exception('Failed to load weather data');
  }
}
