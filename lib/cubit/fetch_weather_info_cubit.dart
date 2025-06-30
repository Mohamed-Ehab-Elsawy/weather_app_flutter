import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/fetch_weather_info_states.dart';
import 'package:weather_app/data/api/weather_services.dart';
import 'package:weather_app/data/model/weather_response.dart';

class FetchWeatherInfoCubit extends Cubit<FetchWeatherInfoStates> {
  FetchWeatherInfoCubit() : super(FetchWeatherInfoStates.initial);
  final WeatherServices _services = WeatherServices();
  late WeatherResponse weatherResponse;
  late ResponseError error;

  fetchWeatherInfo(String city) async {
    try {
      emit(FetchWeatherInfoStates.loading);
      weatherResponse = await _services.fetchWeatherInfo(city: city);
      emit(FetchWeatherInfoStates.success);
    } on DioException catch (e) {
      final errorJson = e.response?.data['error'];
      error = ResponseError.fromJson(errorJson);
      log('DIO EXCEPTION - error message: ${error.message}');
      emit(FetchWeatherInfoStates.failure);
    } catch (e) {
      log(e.toString());
      error.message = "Something went wrong";
      emit(FetchWeatherInfoStates.failure);
    }
  }
}