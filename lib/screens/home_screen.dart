import 'package:flutter/material.dart';
import 'package:weather_app/screens/search_screen.dart';

import '../data/model/weather_info.dart';
import '../widgets/weather_info_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext ctx) => Scaffold(
    appBar: AppBar(
      title: const Text(
        'Weather App',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 24,
        ),
      ),
      backgroundColor: Colors.blue,
      actions: [
        IconButton(
          icon: const Icon(Icons.search_rounded, color: Colors.white, size: 32),
          onPressed: () {
            Navigator.push(
              ctx,
              MaterialPageRoute(builder: (ctx) => const SearchScreen()),
            );
          },
        ),
      ],
    ),
    body: Center(
      child: WeatherInfoSection(
        weatherInfo: WeatherInfo(
          cityName: 'Cairo',
          lastUpdate: '08:00 AM',
          temperature: 40,
          maxTemperature: 42,
          minTemperature: 30,
          status: 'Sunny',
          imageUrl: 'https://openweathermap.org/img/wn/01d@2x.png',
        ),
      ),
    ),
  );
}