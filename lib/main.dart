import 'package:firebase_core/firebase_core.dart';
import 'package:flutte_app/RegistrationAndLanding/models/weatherPage.dart';
// import 'package:flutte_app/weatherPage/weatherPage.dart';
import 'package:flutte_app/productPage.dart';
import 'package:flutter/material.dart';
import 'HomePage/homePage.dart';
// import 'RegistrationAndLanding/Screens/landingPage.dart';
// import 'RegistrationAndLanding/login.dart';
// import 'package:flutte_app/HomePage/homePage.dart';
// import 'package:flutte_app/HomePage/model/weatherPage.dart';
// import 'videoPlayer.dart';
// import 'sample.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return OpeningLandingPage();
    // return WeatherPage();
    // return ProductPage();
    // return LoginScreen();
    return HomePage();
    // return MyAppSe();
  }
}

