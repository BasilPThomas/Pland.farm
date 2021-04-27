import 'package:flutter/material.dart';
import 'package:flutte_app/size_config.dart';


class FourWidget extends StatefulWidget {
  @override
  _FourWidgetState createState() => _FourWidgetState();
}

class _FourWidgetState extends State<FourWidget> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child:Wrap(
        spacing: 4.0,
        runSpacing: 10.0,
        children: [
          Image.asset("images/pexels4.jpg", width:180,height: 160,fit: BoxFit.cover,),
          Image.asset("images/pexels2.jpg",width: 180,height: 160,fit:BoxFit.cover),
          SizedBox( height:getProportionateScreenWidth(15),),
          Text('New Equipments',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
          SizedBox(width: getProportionateScreenWidth(60)),
          Text('Trailors',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
          SizedBox( height:getProportionateScreenWidth(15),),
          Image.asset("images/pexels1.jpg", width:180,height: 160,fit:BoxFit.cover),
          Image.asset("images/fertilizer.jpg",width:180,height: 160,fit:BoxFit.cover),
          SizedBox( height:getProportionateScreenWidth(15),),
          Text('Seeds',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
          SizedBox(width: getProportionateScreenWidth(129)),
          Text('Fertilizer',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
        ],
      ),
    );
  }
}
