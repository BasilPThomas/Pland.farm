import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutte_app/RegistrationAndLanding/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'appBarLogo.dart';
import 'nameAndWeather.dart';
import 'searchBar.dart';
import 'rentEquipment.dart';
import 'johnDeere.dart';
import 'fourWidget.dart';
import 'qualitySeed.dart';
import 'handpickedItems.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget _widgetForDrawer() {
    return Container(
        alignment: Alignment.bottomLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 40,),
                Text('Javan',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),textAlign: TextAlign.center,),
                SizedBox(height: 10,),
                Text('Number', style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 12, color: Colors.white),),
              ],),
            Expanded(
              child : CircleAvatar(
                radius: 60.0, backgroundImage: AssetImage('images/profile.jpg'),),
            ),

          ],
        )
    );
  }

  Widget _LoadMoreButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
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
    return Scaffold(
      drawer:Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [_widgetForDrawer()],
              ),
              decoration: BoxDecoration(
                color: Colors.green,
                // borderRadius: BorderRadius.all(Radius.circular(30)),
                // :  Rect.fromLTWH(50.0, 50.0, 220.0, 90.0),
              ),),
            ListTile(
              title: Text('Profile', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
              // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
            ),
            ListTile(
              title: Text('Tractor', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
              // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
            ),
            ListTile(
              title: Text('Farmer Equipments', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
              // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
            ),
            ListTile(
              title: Text('Market Place', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
              // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
            ),
            ListTile(
              title: Text('Weather', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
              // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
            ),
            ListTile(
              title: Text('Seed', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
              // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
            ),
            ListTile(
              title: Text('Fertilizers', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
              // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
            ),
            ListTile(
              title: Text('Farmer Scheme', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
              // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
            ),
            ListTile(
              title: Text('Log Out', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
              onTap: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                        (route) => false);
              },
              // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
            ),
          ],),),
      body:Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBarLogo(),
              NameAndWeather(),
              SearchBar(),
              RentEquipment(),
              JohnDeere(),
              FourWidget(),
              QualitySeed(),
              HandpickedItems(),
              _LoadMoreButton()
            ],
          ),
        ),
      )
    );
  }
}



//
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class Photo {
//   Photo({
//     this.assetName,
//     this.assetPackage,
//     this.title,
//     this.caption,
//   });
//   final String assetName;
//   final String assetPackage;
//   final String title;
//   final String caption;
// }
//
// List<Photo> photos = <Photo>[
// Photo(assetName: 'images/pexels4.jpg', title: 'New Equipments',),
// Photo(assetName: 'images/pexels2.jpg', title: 'Trailors',),
// Photo(assetName: 'images/pexels1.jpg', title: 'Seeds',),
// Photo(assetName: 'images/fertilizer.jpg', title: 'Fertilizer',),
// ];
//
// class _HomePageState extends State<HomePage> {
//
//   Widget _LoadMoreButton() {
//     return InkWell(
//       onTap: () {
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => HomePage()));
//       },
//       child: Container(
//         width: 190,
//         padding: EdgeInsets.symmetric(vertical: 10,),
//         alignment: Alignment.center,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.all(Radius.circular(30)),
//             gradient: LinearGradient(
//                 begin: Alignment.centerLeft,
//                 end: Alignment.centerRight,
//                 colors: [Color(0xFFFCE4EC), Color(0xFFFCE4EC),]
//             )
//         ),
//         child: Text(
//           'Load More',
//           style: TextStyle(
//               fontSize: 20, fontWeight: FontWeight.bold,),
//         ),
//       ),
//     );
//   }
//
//   Widget _widgetForDrawer() {
//     return Container(
//         alignment: Alignment.bottomLeft,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 SizedBox(height: 40,),
//                 Text('Javan',
//                   style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),textAlign: TextAlign.center,),
//                 SizedBox(height: 10,),
//                 Text('Number', style: TextStyle(
//                     fontWeight: FontWeight.bold,fontSize: 12, color: Colors.white),),
//               ],),
//             Expanded(
//               child : CircleAvatar(
//                 radius: 60.0, backgroundImage: AssetImage('images/profile.jpg'),),
//             ),
//
//           ],
//         )
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     SizeConfig().init(context);
//     return Scaffold(
//       drawer: Drawer(
//         child: ListView(
//           children: <Widget>[
//             DrawerHeader(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [_widgetForDrawer()],
//               ),
//               decoration: BoxDecoration(
//                 color: Colors.green,
//                 // borderRadius: BorderRadius.all(Radius.circular(30)),
//                 // :  Rect.fromLTWH(50.0, 50.0, 220.0, 90.0),
//               ),),
//             ListTile(
//                 title: Text('Profile', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
//                 // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
//             ),
//             ListTile(
//               title: Text('Tractor', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
//               // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
//             ),
//             ListTile(
//               title: Text('Farmer Equipments', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
//               // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
//             ),
//             ListTile(
//               title: Text('Market Place', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
//               // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
//             ),
//             ListTile(
//               title: Text('Weather', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
//               // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
//             ),
//             ListTile(
//               title: Text('Seed', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
//               // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
//             ),
//             ListTile(
//               title: Text('Fertilizers', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
//               // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
//             ),
//             ListTile(
//               title: Text('Farmer Scheme', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
//               // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
//             ),
//             ListTile(
//               title: Text('Log Out', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
//               onTap: () async {
//                 await FirebaseAuth.instance.signOut();
//                 Navigator.pushAndRemoveUntil(
//                     context,
//                     MaterialPageRoute(builder: (context) => LoginScreen()),
//                         (route) => false);
//               },
//               // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
//             ),
//           ],),),
//       body: Container(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Container(
//                 padding: EdgeInsets.symmetric(horizontal: 10),
//                 decoration: BoxDecoration(
//                 color: Colors.white,
//                   border: Border.all(color: Colors.black),),
//                 height:getProportionateScreenWidth(45),
//                 width: MediaQuery.of(context).size.width,
//                 margin: EdgeInsets.only(top: 50),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Image.asset("images/logo.jpeg", width: 97,height: 97,),
//                     Icon(Icons.perm_contact_calendar_rounded,size: 35,),
//                   ],),
//               ),
//               SizedBox( height:getProportionateScreenWidth(18),),
//               Container(
//                 padding: EdgeInsets.symmetric(horizontal: 10),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text('Hey , Farmer Name',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
//                     GestureDetector(
//                         onTap:  () {
//                           Navigator.push(
//                               context, MaterialPageRoute(builder: (context) => WeatherPage()));
//                         },
//                         child: Text('14c \n cloudyrainny \n Blore, Ind',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 10),))
//                   ],
//                 ),
//               ),
//               SizedBox( height:getProportionateScreenWidth(18),),
//               Container(
//                 width: 360,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   border: Border.all(color: Colors.black),
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: TextField(
//                   onChanged: (value) => print(value),
//                   decoration: InputDecoration(
//                       contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10,),
//                       border: InputBorder.none,
//                       focusedBorder: InputBorder.none,
//                       enabledBorder: InputBorder.none,
//                       hintText: "What are you looking for ?",
//                       prefixIcon: Icon(Icons.search)),
//                 ),
//               ),
//               SizedBox( height:getProportionateScreenWidth(18),),
//               Container(
//                 color: Colors.black12,
//                 child: SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child:  Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       CirclePeople(
//                         peopleImage: AssetImage('images/seed.jpg'),
//                         peopleName: 'Seed',
//                       ),
//                       CirclePeople(
//                         peopleImage: AssetImage('images/fertilizer.jpg'),
//                         peopleName: 'Fertilizer',
//                       ),
//                       CirclePeople(
//                         peopleImage: AssetImage('images/rotavator.png'),
//                         peopleName: 'Rotavator',
//                       ),
//                       CirclePeople(
//                         peopleImage:
//                         AssetImage('images/Tractor.jpg'),
//                         peopleName: 'Tractor',
//                       ),
//                       CirclePeople(
//                         peopleImage:
//                         AssetImage('images/msp.jpeg'),
//                         peopleName: 'MSP Details',
//                       ),
//                     ],
//                   )
//                 ),
//               ),
//               Container(
//                 padding: EdgeInsets.symmetric(horizontal: 2),
//                 height: 155,
//                 decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                         begin: Alignment.topLeft,
//                         end: Alignment.center,
//                         colors: [Color(0xFFA1FFAA),Color(0xFFFFFCFC),]) ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text('Rent at affordable price',
//                           style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFFE95B2D),fontSize: 18),),
//                         SizedBox(height: 10, ),
//                         Text('Get all the farm equipment at your \n door step',textAlign: TextAlign.center,style: TextStyle(fontSize: 15),),
//                       ],
//                     ),
//                     Container(
//                       height: 160,
//                       width: 140,
//                       decoration: BoxDecoration(
//                           borderRadius:BorderRadius.all(Radius.circular(1)),
//                           image: DecorationImage(
//                             image: AssetImage("images/rotavator.png"),
//                             fit:BoxFit.fill,
//                           )
//                       ),),
//
//                   ],
//                 ),
//               ),
//               // SizedBox(height: 10,),
//               InkWell(
//                 onTap: () {
//                   Navigator.push(
//                       context, MaterialPageRoute(builder: (context) => ProductPage()));
//                 },
//                 child: Container(
//                   height: 155,
//                   width: MediaQuery. of(context). size. width,
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       begin: Alignment.bottomCenter,
//                       end: Alignment.topRight,
//                       colors: [Colors.white, Colors.cyan]) ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Container(
//                         height: 130,
//                         width: 180,
//                         decoration: BoxDecoration(
//                             borderRadius:BorderRadius.all(Radius.circular(20)),
//                             image: DecorationImage(
//                               image: AssetImage("images/Tractor.jpg"),
//                               fit:BoxFit.cover,
//                             )
//                         ),),
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text('John Deere', style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF707070) ,fontSize: 15),),
//                           SizedBox(height: 10,),
//                           Text(" 100 HP to 174 HP ", style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF707070) ,fontSize: 16),),
//                           SizedBox(height: 10,),
//                           Text('Transmission Type: Powershift \n Rear Remote Hydraulics: 3 \n Drive: 2 WD', style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF707070) ,fontSize: 12),)
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox( height:getProportionateScreenWidth(5),),
//               Container(
//                 padding: EdgeInsets.symmetric(horizontal: 10),
//                 child:Wrap(
//                   spacing: 4.0,
//                   runSpacing: 10.0,
//                   children: [
//                     Image.asset("images/pexels4.jpg", width:180,height: 160,fit: BoxFit.cover,),
//                     Image.asset("images/pexels2.jpg",width: 180,height: 160,fit:BoxFit.cover),
//                     SizedBox( height:getProportionateScreenWidth(15),),
//                     Text('New Equipments',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
//                     SizedBox(width: getProportionateScreenWidth(60)),
//                     Text('Trailors',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
//                     SizedBox( height:getProportionateScreenWidth(15),),
//                     Image.asset("images/pexels1.jpg", width:180,height: 160,fit:BoxFit.cover),
//                     Image.asset("images/fertilizer.jpg",width:180,height: 160,fit:BoxFit.cover),
//                     SizedBox( height:getProportionateScreenWidth(15),),
//                     Text('Seeds',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
//                     SizedBox(width: getProportionateScreenWidth(129)),
//                     Text('Fertilizer',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
//                   ],
//                 ),
//               ),
//               SizedBox( height:getProportionateScreenWidth(5),),
//               Container(
//                 width: MediaQuery. of(context). size. width,
//                 decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                         begin: Alignment.topLeft,
//                         end: Alignment.centerRight,
//                         colors: [Colors.green, Colors.white]) ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text("Best quality seeds",style: TextStyle(color: Colors.green[900],fontWeight: FontWeight.bold,fontSize: 21),),
//                         SizedBox(height: 10,),
//                         Text("Buy high-quality seed,\nthere are many reasons\nwhy you should choose  ",style: TextStyle(fontSize: 15),),
//                         Text("Pland.Farm",style: TextStyle(color: Colors.brown[900],fontWeight: FontWeight.bold,fontSize: 15),),
//                       ],
//                     ),
//                     Container(
//                       height: 140,
//                       width: 170,
//                       decoration: BoxDecoration(
//                           borderRadius:BorderRadius.all(Radius.circular(1)),
//                           image: DecorationImage(
//                             image: AssetImage("images/pexels4.jpg"),
//                             fit:BoxFit.cover,
//                           )
//                       ),),
//                     SizedBox(width: 10, ),
//                   ],
//                 ),
//               ),
//               SizedBox( height:getProportionateScreenWidth(5),),
//               Container(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Text('Top Handpicked items for you',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.start,),
//                     Container(
//                       alignment: Alignment.topCenter,
//                       height:getProportionateScreenWidth(350),
//                       child: new GridView.builder(
//                           itemCount: photos.length,
//                           primary: false,
//                           physics: NeverScrollableScrollPhysics(),
//                           padding: const EdgeInsets.all(10.0),
//                           gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
//                               crossAxisCount: 2),
//                           itemBuilder: (BuildContext context, int index) {
//                             return new GestureDetector(
//                                 onTap: (){
//                                   Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
//                                 },
//                                 child: new Container(
//                                     margin: EdgeInsets.all(10.0),
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                       children: <Widget>[
//                                         SizedBox(
//                                           height: 150.0,
//                                           child: Stack(
//                                             children: <Widget>[
//                                               Positioned.fill(
//                                                   child: Image.asset(
//                                                     photos[index].assetName,
//                                                     fit: BoxFit.cover,
//                                                   )),
//                                               Container(
//                                                 color: Colors.black38,
//                                               ),
//                                               Container(
//                                                 //margin: EdgeInsets.only(left: 10.0),
//                                                 padding: EdgeInsets.only(left: 3.0, bottom: 3.0),
//                                                 alignment: Alignment.bottomLeft,
//                                                 child: new GestureDetector(
//                                                   onTap: () {
//                                                     Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
//                                                   },
//                                                   child: new Text(
//                                                     photos[index].title,
//                                                     style: TextStyle(
//                                                         fontSize: 12.0,
//                                                         color: Colors.white,
//                                                         fontWeight:
//                                                         FontWeight.bold),
//                                                   ),
//                                                 ),
//                                               ),
//
//                                             ],
//                                           ),
//                                         ),
//
//                                         // new Text(photos[index].title.toString()),
//                                       ],
//                                     )
//                                 )
//
//                             );
//                           }),
//                     )
//                   ],),),
//               _LoadMoreButton()
//             ],),
//         )
//       ),
//     );
//   }
// }
