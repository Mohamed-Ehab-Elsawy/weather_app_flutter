class WeatherInfo {
  String? cityName;
  String? lastUpdate;
  String? status;
  String? imageUrl;
  num? temperature;
  num? maxTemperature;
  num? minTemperature;

  WeatherInfo({
    required this.cityName,
    required this.lastUpdate,
    required this.status,
    required this.imageUrl,
    required this.temperature,
    required this.maxTemperature,
    required this.minTemperature,
  });
}