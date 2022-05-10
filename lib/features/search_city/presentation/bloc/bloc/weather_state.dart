part of 'weather_bloc.dart';

@immutable
abstract class WeatherState {}

class WeatherInitial extends WeatherState {}

class WeatherIsNotSearched extends WeatherState
{

}

class WeatherIsLoading extends WeatherState
{

}

class WeatherIsLoaded extends WeatherState
{
  final weather;
  WeatherIsLoaded(this.weather);

}

class WeatherIsNotLoaded extends WeatherState
{
  final message;
  WeatherIsNotLoaded(this.message);
}
