import 'package:firebase_core/firebase_core.dart';
// import 'package:flutte_app/video.dart';
import 'package:flutte_app/RegistrationAndLanding/models/weatherPage.dart';
import 'package:flutter/material.dart';
import 'RegistrationAndLanding/Screens/landingPage.dart';
// import 'RegistrationAndLanding/login.dart';
import 'package:flutte_app/HomePage/homePage.dart';
// import 'videoPlayer.dart';
import 'sample.dart';

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
    return WeatherPage();
    // return LoginScreen();
    // return HomePage();
    // return App();
  }
}

