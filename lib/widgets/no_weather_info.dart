import 'package:flutter/material.dart';

class NoWeatherInfo extends StatelessWidget {
  const NoWeatherInfo({super.key});

  @override
  Widget build(BuildContext context) => Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [Colors.blue, Colors.white],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    ),
    child: Center(
      child: const Text(
        'Search first',
        style: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
  );
}