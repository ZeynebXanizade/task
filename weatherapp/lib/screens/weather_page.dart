import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

//Bakının hava haqqında proqnozunu göstərən çox sadə app (Hər hansı bir free api istifadə oluna bilər). Sadəcə tempratur görsədilsin.
class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  String temperature = '';

  @override
  void initState() {
    super.initState();
    fetchWeather();
  }

  Future<void> fetchWeather() async {
    const apiUrl =
        'https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&current=temperature_2m,wind_speed_10m&hourly=temperature_2m,relative_humidity_2m,wind_speed_10m';

    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        temperature = data['current']['temperature_2m'].toString();
      });
    } else {
      print("not loaded");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Temperature: $temperature°C',
          style: const TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
