import 'package:flutter/material.dart';

class RentEquipment extends StatefulWidget {
  @override
  _RentEquipmentState createState() => _RentEquipmentState();
}

class _RentEquipmentState extends State<RentEquipment> {
  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2),
      height: 155,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.center,
              colors: [Color(0xFFA1FFAA),Color(0xFFFFFCFC),]) ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Rent at affordable price',
                style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFFE95B2D),fontSize: 18),),
              SizedBox(height: 10, ),
              Text('Get all the farm equipment at your \n door step',textAlign: TextAlign.center,style: TextStyle(fontSize: 15),),
            ],
          ),
          Container(
            height: 160,
            width: 140,
            decoration: BoxDecoration(
                borderRadius:BorderRadius.all(Radius.circular(1)),
                image: DecorationImage(
                  image: AssetImage("images/rotavator.png"),
                  fit:BoxFit.fill,
                )
            ),),

        ],
      ),
    );
  }
}
