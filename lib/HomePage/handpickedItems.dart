import 'package:flutter/material.dart';
import 'package:flutte_app/size_config.dart';


class HandpickedItems extends StatefulWidget {
  @override
  _HandpickedItemsState createState() => _HandpickedItemsState();
}

class Photo {
  Photo({
    this.assetName,
    this.assetPackage,
    this.title,
    this.caption,
  });
  final String assetName;
  final String assetPackage;
  final String title;
  final String caption;
}

List<Photo> photos = <Photo>[
  Photo(assetName: 'images/pexels4.jpg', title: 'New Equipments',),
  Photo(assetName: 'images/pexels2.jpg', title: 'Trailors',),
  Photo(assetName: 'images/pexels1.jpg', title: 'Seeds',),
  Photo(assetName: 'images/fertilizer.jpg', title: 'Fertilizer',),
];

class _HandpickedItemsState extends State<HandpickedItems> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Top Handpicked items for you',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.start,),
          Container(
            alignment: Alignment.topCenter,
            height:getProportionateScreenWidth(350),
            child: new GridView.builder(
                itemCount: photos.length,
                primary: false,
                physics: NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(10.0),
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  return new GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> HandpickedItems()));
                      },
                      child: new Container(
                          margin: EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 150.0,
                                child: Stack(
                                  children: <Widget>[
                                    Positioned.fill(
                                        child: Image.asset(
                                          photos[index].assetName,
                                          fit: BoxFit.cover,
                                        )),
                                    Container(
                                      color: Colors.black38,
                                    ),
                                    Container(
                                      //margin: EdgeInsets.only(left: 10.0),
                                      padding: EdgeInsets.only(left: 3.0, bottom: 3.0),
                                      alignment: Alignment.bottomLeft,
                                      child: new GestureDetector(
                                        onTap: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=> HandpickedItems()));
                                        },
                                        child: new Text(
                                          photos[index].title,
                                          style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.white,
                                              fontWeight:
                                              FontWeight.bold),
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),

                              // new Text(photos[index].title.toString()),
                            ],
                          )
                      )

                  );
                }),
          )
        ],),
    );
  }
}
