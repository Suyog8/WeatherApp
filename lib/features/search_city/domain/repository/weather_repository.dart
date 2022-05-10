


//import 'package:weatherappusingbloc/features/search_city/domain/entity/weather_model.dart';

import '../entity/weather_model.dart';

abstract class WeatherRepository
{
  Future<WeatherModel> getWeather(String name);
}
