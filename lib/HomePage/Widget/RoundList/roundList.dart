import 'package:flutter/material.dart';
import 'package:flutte_app/HomePage/Widget/RoundList/seedPage.dart';
import 'package:flutte_app/HomePage/Widget/RoundList/mspPage.dart';
import 'package:flutte_app/HomePage/Widget/RoundList/tractor.dart';

class RoundList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5,bottom: 5),
      color: Colors.black12,
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:  Wrap(
            spacing: 6,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SeedPage()));
                },
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric( vertical: 15.0,),
                      height: 80.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image:  AssetImage('images/seed.jpg'),
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    Text('Seed',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => TractorPage()));
                },
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric( vertical: 15.0,),
                      height: 80.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image:  AssetImage('images/fertilizer.jpg'),
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    Text('Fertilizer',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),

                  ],
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => TractorPage()));
                },
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric( vertical: 15.0,),
                      height: 80.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image:  AssetImage('images/rotavator.png'),
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    Text('Rotavator',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  ],
                ),

              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => TractorPage()));
                },
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric( vertical: 15.0,),
                      height: 80.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image:  AssetImage('images/Tractor.jpg'),
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    Text('Tractor',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),

                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MSPPage()));
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric( vertical: 15.0,),
                        height: 80.0,
                        width: 80.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image:  AssetImage('images/msp.jpeg'),
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      Text('MSP Details',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}

