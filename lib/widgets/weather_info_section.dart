import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/fetch_weather_info_cubit.dart';


class WeatherInfoSection extends StatelessWidget {
  const WeatherInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    var weatherInfo =
        BlocProvider.of<FetchWeatherInfoCubit>(context).weatherResponse!;
    var lastUpdate = weatherInfo.currentWeather!.lastUpdated!;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          weatherInfo.location?.name ?? "",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
        ),
        const SizedBox(height: 16),
        Text(
          'Last update: ${lastUpdate.hour}:${lastUpdate.minute}',
          style: TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            weatherInfo.currentWeather?.condition?.icon != null
                ? Image.network(
                  'https:${weatherInfo.currentWeather?.condition!.icon!}',
                )
                : Image.asset('assets/images/clear.png'),
            Text(
              '${weatherInfo.currentWeather?.tempC}° C',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
          ],
        ),
        const SizedBox(height: 50),
        Text(
          weatherInfo.currentWeather?.condition?.text ?? "",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
        ),
      ],
    );
  }
}