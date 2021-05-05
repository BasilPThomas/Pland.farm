import 'package:flutter/material.dart';
import 'package:flutte_app/size_config.dart';


class SeedPage extends StatefulWidget {
  @override
  _SeedPageState createState() => _SeedPageState();
}

class _SeedPageState extends State<SeedPage> {

  String dropdownValue = 'Tractor';
  String selectedItem = 'Tractor';
  final List<String> items = <String> [
    'Tractor', 'Two', 'Free', 'Four'];
  // int priceValue = '' ;

  Widget _dropdownVaules() {
    return  Container(
      padding: EdgeInsets.only(left: 10,right: 5),
      height: 30,
      width: 150,
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black38,
              offset: Offset(1, 2),
              blurRadius: 1,
              spreadRadius: 1)
        ],
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xfff3f3f4),  Color(0xfff3f3f4)]
        ),
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10.0),
      ),
      // padding: EdgeInsets.only(left: 30.0,right: 30,top: 2,bottom: 2),
      child:  DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedItem,
          focusColor: Colors.pink[900],
          iconEnabledColor: Colors.black,
          onChanged: (String string) => setState(() => selectedItem = string),
          selectedItemBuilder: (BuildContext context) {
            return items.map<Widget>((String item) {
              return Center(child: Text('$item',style: TextStyle(fontSize: 10)));
            }).toList();
          },
          items: items.map((String item) {
            return DropdownMenuItem<String>(
              child: Center(child: Text('$item',style: TextStyle())),
              value: item,
            );
          }).toList(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            // DrawerHeader(
            //   // child: Column(
            //   //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   //   children: [_widgetForDrawer()],
            //   // ),
            //   decoration: BoxDecoration(
            //     color: Colors.green,
            //     // borderRadius: BorderRadius.all(Radius.circular(30)),
            //     // :  Rect.fromLTWH(50.0, 50.0, 220.0, 90.0),
            //   ),),
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
          ],),),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.menu, color: Colors.black),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo.jpeg',
              fit: BoxFit.contain,
              height: 32,
            ),
          ],
        ),
      ),
      body:  Container(
        child: SingleChildScrollView(
          child: Wrap(
            // runSpacing: 10,
            // spacing: 10,
            direction: Axis.vertical,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green[900]),),
                    height: 135,
                    width: 95,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                          child: Center(child: Text('Related Catagory',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 10),)),
                          color: Colors.green[900],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric( horizontal: 5),
                          child: Text('Tractor Spare Parts\n\n'
                              'Tractor Front End Loader \n\n'
                              'Agricultural Machinery',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 10),),
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text('\t\t\tMore +',style: TextStyle(color:Colors.green[900],fontSize: 10 ),))
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only( right: 80, bottom: 10),
                          child: Text('Categories to explore',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                      Container(
                        child: Wrap(
                          spacing: 5,
                          children: [
                            Container(
                              // height: 100,
                              decoration: BoxDecoration(
                                color:Colors.black12,
                                borderRadius: BorderRadius.circular(20.0),
                                ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 5,bottom: 10),
                                    child: Image.asset('images/unnamed1.png',height: 60,width: 100,),
                                    ),
                                  Container(
                                      child:Text('Wheat',style: TextStyle(fontSize: 10,color: Colors.green[900]),)
                                      ),
                                ],
                              ),
                            ),
                            Container(
                              // height: 100,
                              decoration: BoxDecoration(
                                color:Colors.black12,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 5,bottom: 10),
                                    child: Image.asset('images/unnamed1.png',height: 60,width: 100,),
                                  ),
                                  Container(
                                      child:Text('Barley',style: TextStyle(fontSize: 10,color: Colors.green[900]),)
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // height: 100,
                              decoration: BoxDecoration(
                                color:Colors.black12,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 5,bottom: 10),
                                    child: Image.asset('images/unnamed1.png',height: 60,width: 90,),
                                  ),
                                  Container(
                                      child:Text('Wheat',style: TextStyle(fontSize: 10,color: Colors.green[900]),)
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green[900]),),
                    height: 111,
                    width: 95,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                          child: Center(child: Text('Related Brands',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 10),)),
                          color: Colors.green[900],
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                          child: Text('Mahindra\n\n'
                              'Swaraj\n\n'
                              'Massey Ferguson'
                            ,style: TextStyle(fontWeight: FontWeight.w300,fontSize: 10),),
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text('\t\tMore +',style: TextStyle(color:Colors.green[900],fontSize: 10 ),))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only( bottom: 5),
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(right: 30, bottom: 10),
                            child: Text('Popular Tractor Products',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.green[900]),)),
                        Container(
                          child: Wrap(
                            spacing: 5,
                            children: [
                              Container(
                                // height: 110,
                                decoration: BoxDecoration(
                                  color:Colors.black12,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5,bottom: 10),
                                      child: Image.asset('images/unnamed1.png',height: 50,width: 100,),
                                    ),
                                    Container(
                                        child:Text('Corn',style: TextStyle(fontSize: 10,color: Colors.green[900]),)
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.star,size: 10,color: Colors.amber,),
                                        Icon(Icons.star,size: 10,color: Colors.amber,),
                                        Icon(Icons.star,size: 10,color: Colors.amber,),
                                        Icon(Icons.star,size: 10,color: Colors.amber,),
                                        Icon(Icons.star,size: 10,color: Colors.amber,)
                                      ],
                                    ),
                                    Text('\u20B9 ${200/10}kg')
                                  ],
                                ),
                              ),
                              Container(
                                // height: 100,
                                decoration: BoxDecoration(
                                  color:Colors.black12,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5,bottom: 10),
                                      child: Image.asset('images/unnamed1.png',height: 50,width: 100,),
                                    ),
                                    Container(
                                        child:Text('GroundNut',style: TextStyle(fontSize: 10,color: Colors.green[900]),)
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.star,size: 10,color: Colors.amber,),
                                        Icon(Icons.star,size: 10,color: Colors.amber,),
                                        Icon(Icons.star,size: 10,color: Colors.amber,),
                                        Icon(Icons.star,size: 10,color: Colors.amber,),
                                        Icon(Icons.star,size: 10,color: Colors.amber,)
                                      ],
                                    ),
                                    Text('\u20B9 ${1400/10}kg')
                                  ],
                                ),
                              ),
                              Container(
                                // height: 100,
                                decoration: BoxDecoration(
                                  color:Colors.black12,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5,bottom: 10),
                                      child: Image.asset('images/unnamed1.png',height: 50,width: 90,),
                                    ),
                                    Container(
                                        child:Text('Sunflower',style: TextStyle(fontSize: 10,color: Colors.green[900]),)
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.star,size: 10,color: Colors.amber,),
                                        Icon(Icons.star,size: 10,color: Colors.amber,),
                                        Icon(Icons.star,size: 10,color: Colors.amber,),
                                        Icon(Icons.star,size: 10,color: Colors.amber,),
                                        Icon(Icons.star,size: 10,color: Colors.amber,)
                                      ],
                                    ),
                                    Text('\u20B9 ${800/10}kg')
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                // height: 170,
                  width: 275,
                  margin: EdgeInsets.only(top: 10, left:110,bottom: 15),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green[900]),),
                  child:Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('images/2.jpg',height: 100,width: 140,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Mahindra 275 TU DI SP \nPlus Tractor',style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold, color: Colors.pink[900]),),
                              SizedBox( height:getProportionateScreenWidth(5),),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 3,horizontal: 5),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.grey.shade300,)],
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                  border: Border.all(color: Colors.green[900]),
                                  color: Colors.white10,
                                ),
                                child: Text(
                                  'Ask Price',
                                  style: TextStyle(
                                      fontSize: 8, fontWeight: FontWeight.bold, color: Colors.green),
                                ),),
                              SizedBox( height:getProportionateScreenWidth(5),),
                              Text('Brand: Mahindra\n'
                                  'Number Of Cylinders: 3 Cylinder\n'
                                  ' Lifting Capacity: 1500 Kg ',style: TextStyle(
                                  fontSize: 8, fontWeight: FontWeight.bold, color: Colors.green)),
                              SizedBox( height:getProportionateScreenWidth(5),),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 3,horizontal: 5),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.grey.shade300,
                                      offset: Offset(1, 2),
                                      blurRadius: 1,
                                      // spreadRadius: 2
                                    )],
                                  border: Border.all(color: Colors.black38),
                                  color: Colors.white10,
                                ),
                                child: Text(
                                  'read more...',
                                  style: TextStyle(
                                      fontSize: 8, fontWeight: FontWeight.bold),
                                ),),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.redeem_outlined,size: 15,color: Colors.red,),
                                  Text('Industry Leader',style: TextStyle(fontSize: 6),),
                                  Icon(Icons.mode_comment_outlined,size: 15,color: Colors.deepOrange,),
                                  Text('TrustSEAL Verified',style: TextStyle(fontSize: 6),),
                                ],),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.video_label_outlined,color: Colors.green[900],size: 15,),
                                  SizedBox(width: getProportionateScreenWidth(5)),
                                  Text("Product video",style: TextStyle(fontSize: 6,fontWeight: FontWeight.bold,color: Colors.green[900]))
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 3,horizontal: 8),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    color: Colors.green[400],
                                  ),
                                  child: Text(
                                    'Contact Supplier',
                                    style: TextStyle(
                                        fontSize: 6, fontWeight: FontWeight.bold, color: Colors.white),
                                  ),),
                              ),
                              SizedBox(width: getProportionateScreenWidth(5)),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 3,horizontal: 8),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: Colors.green[400],
                                ),
                                child: Text(
                                  'Request Quote',
                                  style: TextStyle(
                                      fontSize: 6, fontWeight: FontWeight.bold, color: Colors.white),
                                ),)
                            ],
                          )
                        ],
                      )
                    ],)),
              Container(
                // height: 170,
                  width: 275,
                  margin: EdgeInsets.only( left: 110,bottom: 15),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green[900]),),
                  child:Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('images/2.jpg',height: 100,width: 150,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Mahindra 275 TU DI SP\nPlus Tractor',style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold, color: Colors.pink[900]),),
                              SizedBox( height:getProportionateScreenWidth(5),),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 3,horizontal: 5),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.grey.shade300,
                                    )],
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                  border: Border.all(color: Colors.green[900]),
                                  color: Colors.white10,
                                ),
                                child: Text(
                                  'Ask Price',
                                  style: TextStyle(
                                      fontSize: 8, fontWeight: FontWeight.bold, color: Colors.green),
                                ),),
                              SizedBox( height:getProportionateScreenWidth(5),),
                              Text('Brand: Mahindra\n'
                                  'Number Of Cylinders: 3 Cylinder\n'
                                  ' Lifting Capacity: 1500 Kg ',style: TextStyle(
                                  fontSize: 8, fontWeight: FontWeight.bold, color: Colors.green)),
                              SizedBox( height:getProportionateScreenWidth(5),),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 3,horizontal: 5),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.grey.shade300,
                                      offset: Offset(1, 2),
                                      blurRadius: 1,
                                      // spreadRadius: 2
                                    )],
                                  border: Border.all(color: Colors.green[900]),
                                  color: Colors.white10,
                                ),
                                child: Text(
                                  'read more...',
                                  style: TextStyle(
                                      fontSize: 8, fontWeight: FontWeight.bold),
                                ),),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.redeem_outlined,size: 15,color: Colors.red,),
                                  Text('Industry Leader',style: TextStyle(fontSize: 6),),
                                  Icon(Icons.mode_comment_outlined,size: 15,color: Colors.deepOrange,),
                                  Text('TrustSEAL Verified',style: TextStyle(fontSize: 6),),
                                ],),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.video_label_outlined,color: Colors.green[900],size: 15,),
                                  SizedBox(width: getProportionateScreenWidth(5)),
                                  Text("Product video",style: TextStyle(fontSize: 6,fontWeight: FontWeight.bold,color: Colors.green[900]))
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 3,horizontal: 8),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    color: Colors.green[400],
                                  ),
                                  child: Text(
                                    'Contact Supplier',
                                    style: TextStyle(
                                        fontSize: 6, fontWeight: FontWeight.bold, color: Colors.white),
                                  ),),
                              ),
                              SizedBox(width: getProportionateScreenWidth(5)),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 3,horizontal: 8),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: Colors.green[400],
                                ),
                                child: Text(
                                  'Request Quote',
                                  style: TextStyle(
                                      fontSize: 6, fontWeight: FontWeight.bold, color: Colors.white),
                                ),)
                            ],
                          )
                        ],
                      )
                    ],
                  )
              ),
              Container(
                height: 160,
                width: 275,
                padding: EdgeInsets.only(left: 5),
                margin: EdgeInsets.only( left: 110,bottom: 15),
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black38,
                        offset: Offset(2, 4),
                        blurRadius: 3,
                        spreadRadius: 2)
                  ],
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xfff3f3f4),  Color(0xfff3f3f4)]
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  border: Border.all(color: Colors.green[900]),),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Tell us what you need, and we’ll help you get quotes',
                        style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.green[900])),
                    Row(
                      children: [
                        Text('I want quote for tractor' ,
                            style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold)),
                        SizedBox(width: getProportionateScreenWidth(28)),
                        _dropdownVaules()
                      ],
                    ),
                    // SizedBox( height:getProportionateScreenWidth(12),),
                    Row(
                      children: [
                        Text('Briefly describle your \nrequirement',
                            style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold)),
                        SizedBox(width: getProportionateScreenWidth(30)),
                        Container(
                          height: 47,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            border: Border.all(color: Colors.black),),)
                      ],),
                    Container(
                      width: 100,
                      padding: EdgeInsets.symmetric(vertical: 3),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.green[400],
                      ),
                      child: Text(
                        'Submit requirements',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
                      ),),
                  ],
                ),
              )
            ],),
        ),
      ),
    );
  }
}
