import 'package:flutter/material.dart';
import '/screens/location_details/location_details.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: LocationDetails(),
    );
  }
}