import 'package:flutter/material.dart';
import 'pages/CHOOSE_ATHLETE_PAGE/choose_athlete.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Neuro-Excellence',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Choose_Athlete_PAGE(title: 'Neuro Execellence'),
    );
  }
}


