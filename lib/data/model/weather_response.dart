class WeatherResponse {
  Location? location;
  Current? currentWeather;

  WeatherResponse({this.location, this.currentWeather});

  WeatherResponse.fromJson(dynamic json) {
    location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    currentWeather =
        json['current'] != null ? Current.fromJson(json['current']) : null;
  }
}

class Current {
  DateTime? lastUpdated;
  num? tempC;
  Condition? condition;

  Current({this.lastUpdated, this.tempC});

  Current.fromJson(dynamic json) {
    lastUpdated = DateTime.parse(json['last_updated']);
    tempC = json['temp_c'];
    condition =
        json['condition'] != null
            ? Condition.fromJson(json['condition'])
            : null;
  }
}

class Condition {
  String? text;
  String? icon;
  num? code;

  Condition({this.text, this.icon, this.code});

  Condition.fromJson(dynamic json) {
    text = json['text'];
    icon = json['icon'];
    code = json['code'];
  }
}

class Location {
  String? name;
  String? country;

  Location({this.name, this.country});

  Location.fromJson(dynamic json) {
    name = json['name'];
    country = json['country'];
  }
}

class ResponseError {
  num? code;
  String? message;

  ResponseError({this.code, this.message});

  factory ResponseError.fromJson(Map<String, dynamic> json) {
    return ResponseError(
      code: json['code'],
      message: json['message'],
    );
  }
}