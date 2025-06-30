import 'package:flutter/material.dart';

class NoWeatherInfo extends StatelessWidget {
  const NoWeatherInfo({super.key});

  @override
  Widget build(BuildContext context) => Center(
    child: Text(
      'Search first',
      style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
    ),
  );
}