import 'package:flutter/material.dart';
import 'package:day8_30doc/pages/splash_screen.dart';

void main()=>runApp(EventsForTechies());

class EventsForTechies extends StatelessWidget{

  Widget build(BuildContext context){

    return MaterialApp(
      title: 'Events for techies',
      home: SplashScreen(),
    );
  }
}
