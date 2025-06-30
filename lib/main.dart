import 'package:flutter/material.dart';
import 'package:weather_app/cubit/fetch_weather_info_cubit.dart';
import 'package:weather_app/screens/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) =>
      BlocProvider(
        create: (context) => FetchWeatherInfoCubit(),
        child: MaterialApp(
            debugShowCheckedModeBanner: false, home: HomeScreen()),
      );
}