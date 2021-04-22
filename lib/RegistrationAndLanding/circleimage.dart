import 'package:flutter/material.dart';

class CirclePeople extends StatelessWidget {
  final AssetImage peopleImage;
  final String peopleName;

  const CirclePeople({@required this.peopleImage, @required this.peopleName});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric( vertical: 15.0,),
          height: 80.0,
          width: 80.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitHeight,
              image: peopleImage,
            ),
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
        Text(peopleName,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      ],
    );
  }
}
