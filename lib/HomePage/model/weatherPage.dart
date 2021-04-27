import 'package:flutter/material.dart';
import 'package:flutte_app/HomePage/homePage.dart';
import 'networking.dart';
import 'location.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class WeatherPage extends StatefulWidget {
  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {

  double latitude;
  double longitude;

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();

    latitude = location.latitude;
    longitude = location.longitude;
    print(longitude);
    
    Network network = Network(
        "http://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&exclude=hourly,minutely&APPID=$apiKey&units=metric");

    var weatherData = await network.getData();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return HomePage(locationWeather: weatherData,)
      ;
    }));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitWave(
          color: Colors.green,
          size: 100.0,
        ),
      ),
    );
  }
}
