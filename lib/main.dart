import 'package:firebase_core/firebase_core.dart';
import 'package:flutte_app/video.dart';
import 'package:flutter/material.dart';
import 'landingPage.dart';
import 'login.dart';
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
    return OpeningLandingPage();
    // return LoginScreen();
    // return VideoApp();
    // return BumbleBeeRemoteVideo();
    // return App();
  }
}

