

import 'package:flutter/material.dart';
import 'package:weatherappusingbloc/features/search_city/presentation/bloc/bloc/weather_bloc.dart';

class SearchButton extends StatelessWidget
{
  final WeatherBloc weatherBloc;
  final TextEditingController controller;
  SearchButton(this.weatherBloc,this.controller);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed:(){
             weatherBloc.add(FetchWeather(controller.text));
             
            }, child: const Text("Search"));
  }
  
}