import 'package:flutte_app/weather/weatherPage.dart';
import 'package:flutter/material.dart';
import 'package:flutte_app/size_config.dart';

class NameAndWeather extends StatefulWidget {
  @override
  _NameAndWeatherState createState() => _NameAndWeatherState();
}

class _NameAndWeatherState extends State<NameAndWeather> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Hey , Farmer Name',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
          GestureDetector(
              onTap:  () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => WeatherPage()));
              },
              child: Text('14c \n cloudyrainny \n Blore, Ind',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 10),))
        ],
      ),
    );
  }
}
