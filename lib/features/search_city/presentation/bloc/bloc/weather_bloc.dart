import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weatherappusingbloc/features/search_city/data/repository/weather_repo_impl.dart';
import 'package:weatherappusingbloc/features/search_city/domain/entity/weather_model.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {

  WeatherRepositoryImpl weatherRepo;
  WeatherBloc(this.weatherRepo) : super(WeatherIsNotSearched()) {
    on<WeatherEvent>((event, emit) async {
      if(event is FetchWeather)
      {
        emit(WeatherIsLoading());
        try
        {
          WeatherModel weather = await weatherRepo.getWeather(event.city);
          emit(WeatherIsLoaded(weather)); 

        }catch(_){
          emit(WeatherIsNotLoaded("not loaded"));
        }
      } else if(event is ResetWeather)
      {
        emit(WeatherIsNotSearched());
      }
    });
  }
}
