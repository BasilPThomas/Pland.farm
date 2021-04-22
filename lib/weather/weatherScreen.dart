import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutte_app/size_config.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  color: Colors.white,
  fontSize: 50.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  color: Colors.white,
  fontSize: 40.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);


class WeatherScreen extends StatefulWidget {
  WeatherScreen({this.locationWeather});
  final locationWeather;

  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {

  double temperature;
  String cityName;
  String description;
  double wind;
  int humidity;
  int rain;
  double minTemp;
  double maxTemp;
  String icon;

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
    wind = weatherData['wind']['speed'];
    humidity = weatherData['main']['humidity'];
    // rain = weatherData['main']['pressure'];
    rain = weatherData['clouds']['all'];
    minTemp = weatherData['main']['temp_min'];
    maxTemp = weatherData['main']['temp_max'];
    icon = weatherData['weather'][0]['icon'];
    // main.temp_min
    // print(description);
    // print(temperature);
    // print(cityName);

  }
    @override
    Widget build(BuildContext context) {
      SizeConfig().init(context);
      return Scaffold(
        // appBar: PreferredSize(
        //   preferredSize: Size.fromHeight(150.0),
        //  child:AppBar(
        //   backgroundColor: Colors.blueGrey[200],
        //   actions: [
        //     // SizedBox(width: getProportionateScreenWidth(105)),
        //     Column(
        //       children: [
        //         Text('Weather', style: TextStyle(fontSize: 25,
        //             color: Colors.white,
        //             fontWeight: FontWeight.bold),),
        //         Text("$cityName,india"
        //           , style: TextStyle(fontSize: 20, fontWeight: FontWeight
        //               .w500, color: Colors.white),),
        //       ],
        //     ),
        //     SizedBox(width: getProportionateScreenWidth(30)),
        //     Icon(Icons.notifications, size: 30, color: Colors.white,),
        //   ],
        // )),
        backgroundColor: Colors.blueGrey[500],
        drawer: Drawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // height:getProportionateScreenWidth(45),
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                // color: Colors.black26,
                margin: EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    SizedBox(width: getProportionateScreenWidth(105)),
                    Column(
                      children: [
                        Text('Weather', style: TextStyle(fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),),
                        Text("$cityName,india"
                          , style: TextStyle(fontSize: 20, fontWeight: FontWeight
                              .w500, color: Colors.white),),
                      ],
                    ),
                    SizedBox(width: getProportionateScreenWidth(30)),
                    Icon(Icons.notifications, size: 30, color: Colors.white,),

                  ],),
              ),
              SizedBox(height: getProportionateScreenWidth(48),),
              Padding(
                padding: EdgeInsets.only(left: 5.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      '$description',
                      style: kMessageTextStyle,
                    ),
                    SizedBox(height: getProportionateScreenWidth(15),),
                    Image.network(
                        'https://openweathermap.org/img/w/$icon.png'),
                    SizedBox(height: getProportionateScreenWidth(15),),
                    Text(
                      '$temperature°c',
                      style: kTempTextStyle,
                    ),
                  ],
                ),
              ),
                SizedBox(height: getProportionateScreenWidth(18),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 100,
                    width: 120,
                    color: Colors.green,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Wind',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight
                              .w500, color: Colors.white),),
                        Image.asset('images/wind.png', width: 40,height: 40),
                        Text(
                          'N $wind kmph',
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight
                              .w500, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 120,
                    color: Colors.green,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Humidity',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight
                              .w500, color: Colors.white),),
                        Image.asset('images/humidity.png', width: 40,height: 40),
                        Text(
                          '$humidity %',
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight
                              .w500, color: Colors.black),
                        ),
                      ],
                    ),
                  ), Container(
                    height: 100,
                    width: 120,
                    color: Colors.green,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Rain',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight
                              .w500, color: Colors.white),),
                        Image.asset('images/rain.png', width: 100,height: 40),
                        Text(
                          '$rain %',
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight
                              .w500, color: Colors.black),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: getProportionateScreenWidth(50),),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sunday',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                        Text('$maxTemp°c/$minTemp°c'  ,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)
                      ],),
                    SizedBox(height: getProportionateScreenWidth(12),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Monday',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                        Text('$maxTemp°c/$minTemp°c'  ,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)
                      ],),
                    SizedBox(height: getProportionateScreenWidth(12),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Tuesday',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                        Text('$maxTemp°c/$minTemp°c'  ,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)
                      ],),
                    SizedBox(height: getProportionateScreenWidth(12),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Text('Wednesday',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                        Text('$maxTemp°c/$minTemp°c'  ,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)
                      ],),
                    SizedBox(height: getProportionateScreenWidth(12),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Thursday',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                        Text('$maxTemp°c/$minTemp°c'  ,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)
                      ],),
                    SizedBox(height: getProportionateScreenWidth(12),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Friday',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                        Text('$maxTemp°c/$minTemp°c'  ,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)
                      ],),
                    SizedBox(height: getProportionateScreenWidth(12),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Saturday',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                        Text('$maxTemp°c/$minTemp°c'  ,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)
                      ],),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }


