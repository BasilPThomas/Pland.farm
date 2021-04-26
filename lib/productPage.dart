import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutte_app/size_config.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body:  SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height:getProportionateScreenWidth(45),
                width: MediaQuery.of(context).size.width,
                color: Colors.black26,
                margin: EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    SizedBox(width: getProportionateScreenWidth(35)),
                    Image.asset("images/image.png", width: 97,height: 97,),
                    SizedBox(width: getProportionateScreenWidth(120)),
                    Icon(Icons.location_on ,size: 30,),
                    Text("Location"
                      ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                  ],),
              ),
              SizedBox( height:getProportionateScreenWidth(18),),
              Container(child: Text('John Deere 42 HP Yuvo 475 DI Tractor, \n (CC) Cubic Capacity: 2730 \n Full Constant mesh',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green[900]))),
              SizedBox( height:getProportionateScreenWidth(18),),
              AspectRatio(
                  aspectRatio: 1.5,
                  child: Image.asset("images/unnamed1.png",
                    )),
              SizedBox( height:getProportionateScreenWidth(9),),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("images/unnamed1.png", width: 100,height: 70,),
                    Image.asset("images/unnamed1.png",width: 100,height: 70,),
                    Image.asset("images/unnamed1.png",width: 100,height: 70,),
                    Image.asset("images/unnamed1.png",width: 100,height: 70,),
                  ],
                ),
              ),
              SizedBox( height:getProportionateScreenWidth(12),),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: getProportionateScreenWidth(20)),
                  Icon(Icons.video_label_outlined,color: Colors.green[900],size: 30,),
                  SizedBox(width: getProportionateScreenWidth(20)),
                  Text("Product video",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green[900]))
                ],
              ),
              Container(
                color: Colors.black26,
                margin: EdgeInsets.only(top: 20, right: 5, left: 5, bottom: 10),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20, right: 8, left: 8, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(' Brand \n\n Model Name/Number \n\n Lift Capacity \n\n Cubic Capacity \n\n Number of Gears \n\n Transmission Type'
                          ,style: TextStyle(fontSize: 19,color: Colors.pink[900])),
                          SizedBox(width: getProportionateScreenWidth(6)),
                          Center(
                            child: Text("John Deere \n\n Yuvo 475 DI \n\n 1500 kg \n\n 2730 \n\n 12 F, 3 R \n\n Full constant mesh"
                                ,style: TextStyle(fontSize: 19,color: Colors.pink[900])),
                          )
                        ],
                      ),
                    ),
                  ],),
              ),
              Container(
                // width: MediaQuery.of(context).size.width,
                width:220,
                padding: EdgeInsets.symmetric(vertical: 15,),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: GestureDetector(
                  // onTap:  () {
                  //   Navigator.push(
                  //       context, MaterialPageRoute(builder: (context) =>MyApp()));
                  // },
                  child:Text(
                  'View complete details',
                  style: TextStyle(fontSize: 12, color:Colors.green[900]),)
                ),),
              SizedBox( height:getProportionateScreenWidth(28),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 150,
                    margin: EdgeInsets.only(right: 5, left: 5,),
                    padding: EdgeInsets.symmetric(vertical: 25,),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      boxShadow:[ BoxShadow(
                        color: Colors.black26,
                        offset: const Offset(
                            5.0,
                            5.0,
                        ),
                        blurRadius: 3.0,
                        spreadRadius: 5.0,
                      ), ],
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Colors.green[900], Colors.green[900],]
                        )
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Contact Dealer ',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          'Ask for best deal',
                          style: TextStyle(
                              fontSize: 9, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    margin: EdgeInsets.only(right: 5, left: 5,),
                    padding: EdgeInsets.symmetric(vertical: 25,),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        boxShadow:[ BoxShadow(
                          color: Colors.black26,
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 3.0,
                          spreadRadius: 5.0,
                        ), ],
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Colors.green[900], Colors.green[900],]
                        )
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Get Latest Price',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          ' Request Quote',
                          style: TextStyle(
                              fontSize: 9, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],),
              SizedBox( height:getProportionateScreenWidth(28),),
            ],
              )
          ),
    );
  }
}