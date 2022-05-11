import 'package:kiwi/kiwi.dart';
import 'package:weatherappusingbloc/features/search_city/data/repository/weather_repo_impl.dart';
import 'package:weatherappusingbloc/features/search_city/domain/repository/weather_repository.dart';
import 'package:weatherappusingbloc/features/search_city/presentation/bloc/bloc/weather_bloc.dart';

part 'injector.g.dart';

abstract class InjectorConfig{

  static KiwiContainer? container;

  static void setup()
  {
    container = KiwiContainer();
    _$InjectorConfig()._configure();
  }
   static final resolve = container!.resolve;

  @Register.factory(WeatherBloc)
  @Register.factory(WeatherRepositoryImpl)
  @Register.factory(WeatherRepository,from: WeatherRepositoryImpl)
  void _configure();

}