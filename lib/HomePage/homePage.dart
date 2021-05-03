import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutte_app/RegistrationAndLanding/Screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutte_app/HomePage/Widget/appBarLogo.dart';
import 'package:flutte_app/HomePage/Widget/RoundList/roundList.dart';
import 'package:flutte_app/weatherPage/weatherPage.dart';
import 'package:flutte_app/HomePage/Widget/searchBar.dart';
import 'package:flutte_app/HomePage/Widget/rentEquipment.dart';
import 'package:flutte_app/HomePage/Widget/johnDeere.dart';
import 'package:flutte_app/HomePage/Widget/fourWidget.dart';
import 'package:flutte_app/HomePage/Widget/qualitySeed.dart';
import 'package:flutte_app/HomePage/Widget/handpickedItems.dart';
import 'package:flutte_app/size_config.dart';


class HomePage extends StatefulWidget {
  // HomePage({this.locationWeather});
  // final locationWeather;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // double temperature;
  // String cityName;
  // String description;
  // @override
  // void initState() {
  //   super.initState();
  //   updateUI(widget.locationWeather);
  //   // print(widget.locationWeather);
  // }
  //
  // void updateUI(dynamic weatherData) {
  //   temperature = weatherData['main']['temp'];
  //   cityName = weatherData['name'];
  //   description = weatherData['weather'][0]['description'];
  // }

  Widget _widgetForDrawer() {
    return Container(
        alignment: Alignment.bottomLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 40,),
                Text('Javan',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),textAlign: TextAlign.center,),
                SizedBox(height: 10,),
                Text('Number', style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 12, color: Colors.white),),
              ],),
            Expanded(
              child : CircleAvatar(
                radius: 60.0, backgroundImage: AssetImage('images/profile.jpg'),),
            ),

          ],
        )
    );
  }

  Widget _LoadMoreButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      },
      child: Container(
        width: 190,
        padding: EdgeInsets.symmetric(vertical: 10,),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xFFFCE4EC), Color(0xFFFCE4EC),]
            )
        ),
        child: Text(
          'Load More',
          style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold,),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      drawer:Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [_widgetForDrawer()],
              ),
              decoration: BoxDecoration(
                color: Colors.green,
                // borderRadius: BorderRadius.all(Radius.circular(30)),
                // :  Rect.fromLTWH(50.0, 50.0, 220.0, 90.0),
              ),),
            ListTile(
              title: Text('Profile', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
              // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
            ),
            ListTile(
              title: Text('Tractor', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
              // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
            ),
            ListTile(
              title: Text('Farmer Equipments', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
              // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
            ),
            ListTile(
              title: Text('Market Place', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
              // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
            ),
            ListTile(
              title: Text('Weather', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
              // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
            ),
            ListTile(
              title: Text('Seed', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
              // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
            ),
            ListTile(
              title: Text('Fertilizers', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
              // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
            ),
            ListTile(
              title: Text('Farmer Scheme', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
              // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
            ),
            ListTile(
              title: Text('Log Out', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
              onTap: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                        (route) => false);
              },
              // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
            ),
          ],),),
      body:Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              LogoAndBar(),
              SizedBox( height:getProportionateScreenWidth(10),),
              // Container(
              //   padding: EdgeInsets.symmetric(horizontal: 10),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Text('Hey , Farmer Name',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
              //       GestureDetector(
              //         onTap:  () {
              //           Navigator.push(
              //               context, MaterialPageRoute(builder: (context) => WeatherPage()));
              //         },
              //         child: Container(
              //           height:50,
              //           child: Column(
              //             children: <Widget>[
              //               Text(
              //                 '$temperature°c',
              //                 style:TextStyle(fontSize: 20),
              //               ),
              //               Text(
              //                 '$description',
              //                 style:TextStyle(fontSize: 10),),
              //               Text("$cityName,india"
              //                 , style: TextStyle(fontSize: 10, fontWeight: FontWeight
              //                     .w500,),),
              //             ],
              //           ),
              //         ),)
              //     ],
              //   ),
              // ),
              SizedBox( height:getProportionateScreenWidth(10),),
              SearchBar(),
              SizedBox( height:getProportionateScreenWidth(5),),
              RoundList(),
              RentEquipment(),
              JohnDeere(),
              FourWidget(),
              SizedBox( height:getProportionateScreenWidth(10),),
              QualitySeed(),
              SizedBox( height:getProportionateScreenWidth(10),),
              HandpickedItems(),
              _LoadMoreButton()
            ],
          ),
        ),
      )
    );
  }
}

