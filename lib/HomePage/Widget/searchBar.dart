import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  // String dropdownValueCrop = 'Select Crop :';
  String selectedItemCrop = 'Select Crop';
  final List<String> itemsCrop = <String> [
    'Select Crop' ,'Wheat', 'Rice', 'Tomato', 'Potato'];

  String selectedItemMachines = 'Select Machines';
  final List<String> itemsMachines = <String> [
    'Select Machines' ,'Rotavator', 'Spraying Pump', 'Tractor'];

  String selectedItemDistance = 'Select Distance';
  final List<String> itemsDistance = <String> [
    'Select Distance' ,'10km', '20km', '30km', '40km'];



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(left: 10.0,right: 10,top: 10,bottom: 10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
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
          // borderRadius: BorderRadius.circular(10.0),
        ),
        child: Wrap(
          spacing: 5,
          runSpacing: 9,
          children: [
            Container(
              height: 38,
              width: 90,
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
                borderRadius: BorderRadius.circular(10.0),
              ),
              child:  DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  iconSize: 0.0,
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
              height: 38,
              width: 125,
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
                borderRadius: BorderRadius.circular(10.0),
              ),
              // padding: EdgeInsets.only(left: 30.0,right: 30,top: 2,bottom: 2),
              child:  DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  iconSize: 0.0,
                  value: selectedItemMachines,
                  focusColor: Colors.pink[900],
                  iconEnabledColor: Colors.black,
                  onChanged: (String string) => setState(() => selectedItemMachines = string),
                  selectedItemBuilder: (BuildContext context) {
                    return itemsMachines.map<Widget>((String item) {
                      return Center(child: Text('$item',style: TextStyle(fontSize: 16)));
                    }).toList();
                  },
                  items: itemsMachines.map((String item) {
                    return DropdownMenuItem<String>(
                      child: Center(child: Text('$item',style: TextStyle(fontSize: 16))),
                      value: item,
                    );
                  }).toList(),
                ),
              ),
            ),
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
                borderRadius: BorderRadius.circular(10.0),
              ),
              // padding: EdgeInsets.only(left: 30.0,right: 30,top: 2,bottom: 2),
              child:  DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  iconSize: 0.0,
                  value: selectedItemDistance,
                  focusColor: Colors.pink[900],
                  iconEnabledColor: Colors.black,
                  onChanged: (String string) => setState(() => selectedItemDistance = string),
                  selectedItemBuilder: (BuildContext context) {
                    return itemsDistance.map<Widget>((String item) {
                      return Center(child: Text('$item',style: TextStyle(fontSize: 16)));
                    }).toList();
                  },
                  items: itemsDistance.map((String item) {
                    return DropdownMenuItem<String>(
                      child: Center(child: Text('$item',style: TextStyle(fontSize: 16))),
                      value: item,
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(width: 80,),
            Container(
              height: 40,
              width: 350,
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
                // borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.search),
                  Center(child: Text('Search')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
