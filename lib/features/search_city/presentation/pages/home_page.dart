import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherappusingbloc/features/search_city/presentation/bloc/bloc/weather_bloc.dart';
import 'package:weatherappusingbloc/features/search_city/presentation/widgets/search_button.dart';
import 'package:weatherappusingbloc/features/search_city/presentation/widgets/search_bar_widget.dart';

import 'Report_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  var mycontroller = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    final weatherBloc = BlocProvider.of<WeatherBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather APP"),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
        child: Column(
          children: [
            
            BlocBuilder<WeatherBloc, WeatherState>(builder: (context, state) {
              if (state is WeatherIsNotSearched) {
                return Column(
                  children: [
                    const Center(
                child: Text(
              "Search Weather",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            )),
            const SizedBox(
              height: 20,
            ),
                    SearchBar(mycontroller),
                    const SizedBox(
                      height: 20,
                    ),
                    SearchButton(weatherBloc, mycontroller),
                  ],
                );
              } else if (state is WeatherIsLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is WeatherIsLoaded) {
                return ReportPage(state.weather, mycontroller.text,weatherBloc);
              }else{
                return const Center(child: Text("Error"));
              }
              
            }),
          ],
        ),
      ),
    );
  }
}
