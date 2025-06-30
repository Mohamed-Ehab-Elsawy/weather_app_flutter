import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/fetch_weather_info_cubit.dart';

class WeatherErrorSection extends StatelessWidget {
  const WeatherErrorSection({super.key});

  @override
  Widget build(BuildContext context) {
    var error = BlocProvider.of<FetchWeatherInfoCubit>(context).error;
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          '${error.message} Try Search Again',
          style: TextStyle(
            color: Colors.red,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}