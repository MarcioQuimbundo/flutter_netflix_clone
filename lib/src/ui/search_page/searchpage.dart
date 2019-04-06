import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black, brightness: Brightness.dark),
      home: SearchView(),
    );
  }
}

final TextStyle topSearchStyle = TextStyle(fontSize: 12, color: Colors.white);

class SearchView extends StatelessWidget {
  final TextStyle bottomMenuStyle =
      TextStyle(fontSize: 12, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            height: 60,
            decoration: BoxDecoration(color: Colors.black),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 40,
                        width: 220,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Color(0xFF999999),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                                fillColor: Colors.grey,
                                hintText: 'Search',
                                contentPadding: EdgeInsets.all(10),
                                prefixIcon: Icon(
                                  Icons.search,
                                  size: 24,
                                  color: Colors.white,
                                ),
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                      FlatButton(
                          onPressed: () {},
                          child: Text("Cancel", style: topSearchStyle)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
