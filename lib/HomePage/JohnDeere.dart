import 'package:flutter/material.dart';

class JohnDeere extends StatefulWidget {
  @override
  _JohnDeereState createState() => _JohnDeereState();
}

class _JohnDeereState extends State<JohnDeere> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 155,
      width: MediaQuery. of(context). size. width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topRight,
              colors: [Colors.white, Colors.cyan]) ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 130,
            width: 180,
            decoration: BoxDecoration(
                borderRadius:BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                  image: AssetImage("images/Tractor.jpg"),
                  fit:BoxFit.cover,
                )
            ),),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('John Deere', style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF707070) ,fontSize: 15),),
              SizedBox(height: 10,),
              Text(" 100 HP to 174 HP ", style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF707070) ,fontSize: 16),),
              SizedBox(height: 10,),
              Text('Transmission Type: Powershift \n Rear Remote Hydraulics: 3 \n Drive: 2 WD', style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF707070) ,fontSize: 12),)
            ],
          )
        ],
      ),
    );
  }
}
