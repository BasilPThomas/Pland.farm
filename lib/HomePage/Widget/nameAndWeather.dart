import 'package:flutte_app/HomePage/model/weatherPage.dart';
import 'package:flutter/material.dart';

class NameAndWeather extends StatefulWidget {
  NameAndWeather({this.locationWeather});
  final locationWeather;
  @override
  _NameAndWeatherState createState() => _NameAndWeatherState();
}

class _NameAndWeatherState extends State<NameAndWeather> {
  double temperature;
  String cityName;
  String description;
  @override
  void initState() {
    super.initState();
    updateUI(widget.locationWeather);
    // print(widget.locationWeather);
  }

  void updateUI(dynamic weatherData) {
    temperature = weatherData['main']['temp'];
    cityName = weatherData['name'];
    description = weatherData['weather'][0]['description'];
  }
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
            child: Container(
              height:50,
              child: Column(
                children: <Widget>[
                  Text(
                    '$temperature°c',
                    style:TextStyle(fontSize: 20),
                  ),
                  Text(
                    '$description',
                    style:TextStyle(fontSize: 10),),
                  Text("$cityName,india"
                    , style: TextStyle(fontSize: 10, fontWeight: FontWeight
                        .w500,),),
                ],
              ),
            ),)
        ],
      ),
    );
  }
}
