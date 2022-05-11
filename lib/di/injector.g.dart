// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'injector.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$InjectorConfig extends InjectorConfig {
  @override
  void _configure() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerFactory((c) => WeatherBloc(c<WeatherRepositoryImpl>()))
      ..registerFactory((c) => WeatherRepositoryImpl())
      ..registerFactory<WeatherRepository>((c) => WeatherRepositoryImpl());
  }
}
