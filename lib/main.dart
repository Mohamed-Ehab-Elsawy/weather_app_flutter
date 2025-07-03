import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/fetch_weather_info_cubit.dart';
import 'package:weather_app/screens/home_screen.dart';
import 'package:weather_app/util.dart';

import 'cubit/fetch_weather_info_states.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => FetchWeatherInfoCubit(),
    child: BlocBuilder<FetchWeatherInfoCubit, FetchWeatherInfoStates>(
      builder:
          (ctx, state) => MaterialApp(
            theme: ThemeData(
              appBarTheme: AppBarTheme(
                backgroundColor: getThemeColor(
                  BlocProvider.of<FetchWeatherInfoCubit>(
                    ctx,
                  ).weatherResponse?.currentWeather?.condition?.text,
                ),
                foregroundColor: Colors.white,
              ),
            ),
            debugShowCheckedModeBanner: false,
            home: const HomeScreen(),
          ),
    ),
  );
}