import 'package:flutter/material.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';



class MyAppSe extends StatefulWidget {
  @override
  MyAppSeState createState() => MyAppSeState();
}

class MyAppSeState extends State<MyAppSe> {
  bool asTabs = false;
  String selectedValue;
  final List<DropdownMenuItem> items = [];

  static const String appTitle = "Search Choices demo";
  final String loremIpsum =
      "Wheat Rice Tomato";


  @override
  Widget build(BuildContext context) {
    Map<String, Widget> widgets;
    widgets = {
      "Select Crop": SearchableDropdown.single(
        items: items,
        value: selectedValue,
        hint: "Select one",
        searchHint: "Select one",
        onChanged: (value) {
          setState(() {
            selectedValue = value;
          });
        },
        isExpanded: true,
      ),
    };

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: widgets
                .map((k, v) {
              return (MapEntry(
                  k,
                  Center(
                      child: Container(
                        child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                            margin: EdgeInsets.all(20),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: <Widget>[
                                  Text("$k:"),
                                  v,
                                ],
                              ),
                            )
                        ),
                      )
                  )
              )
              );
            })
                .values
                .toList(),
          ),
        ),
      ),
    );
  }
}