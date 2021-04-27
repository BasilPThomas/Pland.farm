import 'package:flutter/material.dart';

class RoundImage extends StatefulWidget {
  @override
  _RoundImageState createState() => _RoundImageState();
}

class _RoundImageState extends State<RoundImage> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.black12,
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleImage(
                itemImage: AssetImage('images/seed.jpg'),
                itemName: 'Seed',
              ),
              CircleImage(
                itemImage: AssetImage('images/fertilizer.jpg'),
                itemName: 'Fertilizer',
              ),
              CircleImage(
                itemImage: AssetImage('images/rotavator.png'),
                itemName: 'Machinery',
              ),
              CircleImage(
                itemImage: AssetImage('images/Tractor.jpg'),
                itemName: 'Buy/Rent',
              ),
              CircleImage(
                itemImage: AssetImage('images/msp.jpeg'),
                itemName: 'MSP Details',
              ),
            ],
          )
      ),
    );
  }
}


class CircleImage extends StatelessWidget {
  final AssetImage itemImage;
  final String itemName;

  const CircleImage({@required this.itemImage, @required this.itemName});
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
              image: itemImage,
            ),
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
        Text(itemName,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      ],
    );
  }
}
