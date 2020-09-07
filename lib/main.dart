import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:flutter/material.dart';
import 'package:platzi_trips_app/User/bloc/bloc-user.dart';
import 'platzi_trips_cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(),
          home: PlatziTripsCupertino(),
        ),
        bloc:
            UserBloc()); //Todos los metodos en user bloc seran accesibles a todos los hijos de Material App, osea al child dele BlocProvider
  }
}
