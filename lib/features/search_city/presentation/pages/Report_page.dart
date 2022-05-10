import 'package:flutter/material.dart';
import 'package:weatherappusingbloc/features/search_city/domain/entity/weather_model.dart';
import 'package:weatherappusingbloc/features/search_city/presentation/bloc/bloc/weather_bloc.dart';

class ReportPage extends StatelessWidget
{
  final WeatherModel weather;
  final String city;
  final WeatherBloc weatherBloc;
  ReportPage(this.weather,this.city,this.weatherBloc);
  @override
  Widget build(BuildContext context) {
    return
      Column(children: [
      Center(child: Text("Here is the Weather for $city",style:const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
       const SizedBox(height: 20,),
       Text("temperature: ${weather.temp} K".toString(),style:const TextStyle(fontSize: 18),),
       const SizedBox(height: 20,),
       Text("humidity: ${weather.humidity} "  .toString(),style:const TextStyle(fontSize: 18),),
        const SizedBox(height: 20,),
       Text("pressure: ${weather.pressure}".toString(),style:const TextStyle(fontSize: 18),),
        const SizedBox(height: 20,),
        ElevatedButton(onPressed:(){
             weatherBloc.add(ResetWeather());
             
            }, child: const Text("Search Again"))
      ],
    );
  }
  
}