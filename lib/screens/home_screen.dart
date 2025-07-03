import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/fetch_weather_info_cubit.dart';
import 'package:weather_app/cubit/fetch_weather_info_states.dart';
import 'package:weather_app/widgets/no_weather_info.dart';
import 'package:weather_app/widgets/weather_app_bar.dart';
import 'package:weather_app/widgets/weather_error_section.dart';
import 'package:weather_app/widgets/weather_info_section.dart';

import '../widgets/animated_search_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _showSearch = false;

  @override
  Widget build(BuildContext ctx) => Scaffold(
    appBar: WeatherAppBar(
      onSearchIconPressed: () {
        setState(() {
          _showSearch = !_showSearch;
        });
      },
    ),
    body: BlocBuilder<FetchWeatherInfoCubit, FetchWeatherInfoStates>(
      builder:
          (context, state) => Column(
            children: [
              AnimatedSearchField(
                isVisible: _showSearch,
                onSubmitted: (value) {
                  BlocProvider.of<FetchWeatherInfoCubit>(
                    context,
                  ).fetchWeatherInfo(value);
                  setState(() {
                    _showSearch = !_showSearch;
                  });
                },
              ),
              switch (state) {
                FetchWeatherInfoStates.initial => const Expanded(
                  child: NoWeatherInfo(),
                ),

                FetchWeatherInfoStates.loading => const Expanded(
                  child: Center(child: CircularProgressIndicator()),
                ),

                FetchWeatherInfoStates.success => Expanded(
                  child: WeatherInfoSection(),
                ),

                FetchWeatherInfoStates.failure => const Expanded(
                  child: WeatherErrorSection(),
                ),
              },
            ],
          ),
    ),
  );
}