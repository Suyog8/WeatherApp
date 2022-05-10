import 'dart:convert';

import 'package:weatherappusingbloc/features/search_city/domain/entity/weather_model.dart';

import 'package:weatherappusingbloc/features/search_city/domain/repository/weather_repository.dart';
import 'package:http/http.dart' as http; 
import '../../domain/entity/weather_model.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  @override
  Future<WeatherModel> getWeather(String city) async {
    final response = await http.Client().get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$city&APPID=43ea6baaad7663dc17637e22ee6f78f2"));

    if (response.statusCode != 200) {
      throw Exception('failed to fetch');
    }

    final jsonDecoded = json.decode(response.body);

    final jsonWeather = jsonDecoded['main'];
    final weatherConditions = WeatherModel.fromJson(jsonWeather);
    return weatherConditions;
  }
}
