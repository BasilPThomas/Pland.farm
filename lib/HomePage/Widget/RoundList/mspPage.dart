import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MSPPage extends StatefulWidget {
  @override
  _MSPPageState createState() => _MSPPageState();
}

enum TimeWidget { Date,Month,Year }

class _MSPPageState extends State<MSPPage> {
  TimeWidget _timeWidget = TimeWidget.Date;

  String selectedItemCrop = 'Select Crop';
  final List<String> itemsCrop = <String> [
    'Select Crop' ,'Wheat', 'Rice', 'Tomato', 'Potato'];

  String selectedItemLocation = 'Select Location';
  final List<String> itemsLocation = <String> [
    'Select Location' ,'10km', '20km', '30km', '40km'];

  @override
  Widget build(BuildContext context) {
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Wrap(
              spacing: 10,
              runSpacing: 15,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10,right: 10),
                  height: 45,
                  width: 180,
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
                        colors: [Color(0xFF00E676),  Color(0xFF00E676)]
                    ),
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child:  DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      iconSize: 30.0,
                      value: selectedItemCrop,
                      focusColor: Colors.pink[900],
                      iconEnabledColor: Colors.black,
                      onChanged: (String string) => setState(() => selectedItemCrop = string),
                      selectedItemBuilder: (BuildContext context) {
                        return itemsCrop.map<Widget>((String item) {
                          return Center(child: Text('$item',style: TextStyle(fontSize: 16)));
                        }).toList();
                      },
                      items: itemsCrop.map((String item) {
                        return DropdownMenuItem<String>(
                          child: Center(child: Text('$item',style: TextStyle(fontSize: 16))),
                          value: item,
                        );
                      }).toList(),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10,right: 10),
                  height: 45,
                  width: 180,
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
                        colors: [Color(0xFF00E676),  Color(0xFF00E676)]
                    ),
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child:  DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      iconSize: 30.0,
                      value: selectedItemLocation,
                      focusColor: Colors.pink[900],
                      iconEnabledColor: Colors.black,
                      onChanged: (String string) => setState(() => selectedItemLocation = string),
                      selectedItemBuilder: (BuildContext context) {
                        return itemsLocation.map<Widget>((String item) {
                          return Center(child: Text('$item',style: TextStyle(fontSize: 16)));
                        }).toList();
                      },
                      items: itemsLocation.map((String item) {
                        return DropdownMenuItem<String>(
                          child: Center(child: Text('$item',style: TextStyle(fontSize: 16))),
                          value: item,
                        );
                      }).toList(),
                    ),
                  ),
                ),
                Container(
                    // height: 45,
                    width: 250,
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
                          colors: [Color(0xFF00E676),  Color(0xFF00E676)]
                      ),
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  child:Column(
                    children: <Widget>[
                      ListTile(
                        title: const Text('Date'),
                        leading: Radio(
                          value: TimeWidget.Date,
                          groupValue: _timeWidget,
                          onChanged: (TimeWidget value) {
                            setState(() {
                              _timeWidget = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('Month'),
                        leading: Radio(
                          value: TimeWidget.Month,
                          groupValue: _timeWidget,
                          onChanged: (TimeWidget value) {
                            setState(() {
                              _timeWidget = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('Year'),
                        leading: Radio(
                          value: TimeWidget.Year,
                          groupValue: _timeWidget,
                          onChanged: (TimeWidget value) {
                            setState(() {
                              _timeWidget = value;
                            });
                          },
                        ),
                      ),
                    ],
                  )
                ),
                SizedBox(width: 80,),
                Container(
                  height: 38,
                  width: 120,
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
                        colors: [Color(0xFF00E676),  Color(0xFF00E676)]
                    ),
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(child: Text('Search')),
                      Icon(Icons.search),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

