// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutte_app/size_config.dart';
//
// class WeatherScreen extends StatefulWidget {
//   WeatherScreen({this.locationWeather});
//   final locationWeather;
//   @override
//   _WeatherScreenState createState() => _WeatherScreenState();
// }
//
// class _WeatherScreenState extends State<WeatherScreen> {
//   double temperature;
//   String cityName;
//   String description;
//   @override
//   void initState() {
//     super.initState();
//     updateUI(widget.locationWeather);
//     // print(widget.locationWeather);
//   }
//
//   void updateUI(dynamic weatherData) {
//     temperature = weatherData['main']['temp'];
//     cityName = weatherData['name'];
//     description = weatherData['weather'][0]['description'];
//   }
//     @override
//     Widget build(BuildContext context) {
//       SizeConfig().init(context);
//       return Container(
//            child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Padding(
//                   padding: EdgeInsets.only(left: 5.0),
//                   child: Column(
//                     children: <Widget>[
//                       Text(
//                         '$temperature°c',
//                         style:TextStyle(fontSize: 15),
//                       ),
//                       Text(
//                         '$description',
//                         style:TextStyle(fontSize: 15),),
//                         Text("$cityName,india"
//                         , style: TextStyle(fontSize: 20, fontWeight: FontWeight
//                             .w500,),),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//            )
//       );
//     }
//   }
//
//
