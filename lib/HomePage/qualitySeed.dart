import 'package:flutter/material.dart';

class QualitySeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery. of(context). size. width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.centerRight,
              colors: [Colors.green, Colors.white]) ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Best quality seeds",style: TextStyle(color: Colors.green[900],fontWeight: FontWeight.bold,fontSize: 21),),
              SizedBox(height: 10,),
              Text("Buy high-quality seed,\nthere are many reasons\nwhy you should choose  ",style: TextStyle(fontSize: 15),),
              Text("Pland.Farm",style: TextStyle(color: Colors.brown[900],fontWeight: FontWeight.bold,fontSize: 15),),
            ],
          ),
          Container(
            height: 140,
            width: 170,
            decoration: BoxDecoration(
                borderRadius:BorderRadius.all(Radius.circular(1)),
                image: DecorationImage(
                  image: AssetImage("images/pexels4.jpg"),
                  fit:BoxFit.cover,
                )
            ),),
          SizedBox(width: 10, ),
        ],
      ),
    );
  }
}
