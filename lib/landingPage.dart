import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'size_config.dart';
import 'circleimage.dart';
import 'sample.dart';

class OpeningLandingPage extends StatefulWidget {
  @override
  _OpeningLandingPageState createState() => _OpeningLandingPageState();
}

class _OpeningLandingPageState extends State<OpeningLandingPage> {

  Widget _LoadMoreButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) =>OpeningLandingPage()));
      },
      child: Container(
        width: 190,
        padding: EdgeInsets.symmetric(vertical: 10,),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xFFFCE4EC), Color(0xFFFCE4EC),]
            )
        ),
        child: Text(
          'Load More',
          style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold,),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
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
                ),
                SizedBox( height:getProportionateScreenWidth(18),),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Hey , Sign In',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
                      GestureDetector(
                          onTap:  () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => OpeningLandingPage()));
                          },
                          child: Text('14c \n cloudyrainny \n Blore, Ind',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 10),))
                    ],
                  ),
                ),
                SizedBox( height:getProportionateScreenWidth(18),),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    onChanged: (value) => print(value),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: "What are you looking for ?",
                        prefixIcon: Icon(Icons.search,color: Colors.black,)),
                  ),
                ),
                SizedBox( height:getProportionateScreenWidth(16),),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context){
                          return AlertDialog(
                            title: Text("Alert"),
                            content: Text('Please SignIN'),
                            actions: [
                              FlatButton(
                                  onPressed:() {
                                    Navigator.of(context).push(MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                                  },
                                  child:  Text("login")),
                            ],
                          );
                        }
                    );
                  },
                  child: Container(
                    color: Colors.black12,
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CirclePeople(
                              peopleImage: AssetImage('images/seed.jpg'),
                              peopleName: 'Seed',
                            ),
                            CirclePeople(
                              peopleImage: AssetImage('images/fertilizer.jpg'),
                              peopleName: 'Fertilizer',
                            ),
                            CirclePeople(
                              peopleImage: AssetImage('images/rotavator.png'),
                              peopleName: 'Machinery',
                            ),
                            CirclePeople(
                              peopleImage:
                              AssetImage('images/Tractor.jpg'),
                              peopleName: 'Buy/Rent',
                            ),
                            CirclePeople(
                              peopleImage:
                              AssetImage('images/msp.jpeg'),
                              peopleName: 'MSP Details',
                            ),
                          ],
                        )
                    ),
                  ),
                ),
                // BumbleBeeRemoteVideo(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  height: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: BumbleBeeRemoteVideo()
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Machinary',
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                            Text('When you are looking to buy high-quality\nseed,'
                                'there are many reasons why you should\nchoose Pland.Farm',style: TextStyle(fontSize: 10),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image(image:AssetImage("images/icon3.jpeg",),height: 20,width: 20,),
                                SizedBox(width: 10, ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Support Local",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                      Text( "Buy Local. Sell Local. Support your \nlocal community of growers and farmers ",style: TextStyle(fontSize: 8),),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image(image:AssetImage("images/icon2.jpeg",),height: 20,width: 20,),
                                SizedBox(width: 10, ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Verified Sellers",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                    Text( "Access a large and growing community \nof verified sellers in your region",style: TextStyle(fontSize: 8),),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.blue[100],
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  height: 180,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Best Farming techniques',
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image(image:AssetImage("images/icon1.jpeg",),height: 20,width: 20,),
                                SizedBox(width: 10, ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Register",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                    Text( "Register as a user by providing essential\n information we need to verify you",style: TextStyle(fontSize: 8),),
                                  ],
                                ),
                              ],
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image(image:AssetImage("images/icon.jpeg",),height: 20,width: 20,),
                                SizedBox(width: 10, ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Discuss",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                    Text( "Chat with the our experts to discuss the\n farming tips and techniques.",style: TextStyle(fontSize: 8),),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: BumbleBeeRemoteVideo()
                      ),
                    ],
                  ),
                ),
                SizedBox( height:getProportionateScreenWidth(8),),
                Container(
                  width:MediaQuery.of(context).size.width ,
                  child:  Image(image: AssetImage("images/pland.jpeg") ,height: 70,fit: BoxFit.fill,),
                ),
                SizedBox( height:getProportionateScreenWidth(8),),
                Container(
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
                ),
                SizedBox( height:getProportionateScreenWidth(5),),
                _LoadMoreButton()
              ],),
          )
      ),
    );
  }
}
