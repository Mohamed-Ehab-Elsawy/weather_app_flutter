import 'package:flutter/material.dart';
import '../data/model/weather_info.dart';

class WeatherInfoSection extends StatelessWidget {
  final WeatherInfo weatherInfo;

  const WeatherInfoSection({super.key, required this.weatherInfo});

  @override
  Widget build(BuildContext context) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        weatherInfo.cityName ?? "",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
      ),
      Text(
        'Last update: ${weatherInfo.lastUpdate}',
        style: TextStyle(fontSize: 24),
      ),
      const SizedBox(height: 50),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          weatherInfo.imageUrl == null
              ? Image.asset('assets/images/clear.png')
              : Image.network(weatherInfo.imageUrl!),
          Text(
            '${weatherInfo.temperature}° C',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
          Column(
            children: [
              Text(
                'Max temp: ${weatherInfo.maxTemperature}° C',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'Min temp: ${weatherInfo.minTemperature}° C',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ],
      ),
      const SizedBox(height: 50),
      Text(
        weatherInfo.status ?? "",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
      ),
    ],
  );
}