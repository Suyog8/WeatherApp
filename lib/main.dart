import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherappusingbloc/di/injector.dart';

import 'package:weatherappusingbloc/features/search_city/data/repository/weather_repo_impl.dart';

import 'features/search_city/presentation/bloc/bloc/weather_bloc.dart';
import 'features/search_city/presentation/pages/home_page.dart';

void main() {
  InjectorConfig.setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<WeatherBloc>(
        //create: (context) => WeatherBloc(WeatherRepositoryImpl()),
        create: (context) => InjectorConfig.resolve<WeatherBloc>(),
        child: HomePage(),
      ),
    );
  }
}
