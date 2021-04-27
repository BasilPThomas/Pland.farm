import 'package:flutter/material.dart';
import 'package:flutte_app/size_config.dart';

class LogoAndBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black),),
      height:getProportionateScreenWidth(45),
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("images/logo.jpeg", width: 97,height: 97,),
          Icon(Icons.perm_contact_calendar_rounded,size: 35,),
        ],),
    );
  }
}

