// ignore: depend_on_referenced_packages
import 'package:dio/dio.dart';
import 'package:weather_app/data/model/weather_response.dart';

class WeatherServices {
  final _dio = Dio();

  final _baseURL = 'https://api.weatherapi.com/v1';
  final _apiKey = 'eb19fd0ccff840f3a23162843252706';

  WeatherServices();

  Future<WeatherResponse> fetchWeatherInfo({required String city}) async {
    var response = await _dio.get(
      "$_baseURL/current.json",
      queryParameters: {'key': _apiKey, 'q': city},
    );
    return WeatherResponse.fromJson(response.data);
  }
}