import 'package:flutter/material.dart';

class MorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black, brightness: Brightness.dark),
      home: MoreView(),
    );
  }
}

final TextStyle bottomProfileStyle =
    TextStyle(fontSize: 12, color: Colors.white);

class MoreView extends StatelessWidget {
  final TextStyle bottomMenuStyle =
      TextStyle(fontSize: 12, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: ListView(
          children: <Widget>[
            makeProfileWidget(),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.edit),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Manage Profile"),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      )),
                  Icon(Icons.notifications),
                  Text("Notifications"),
                  Spacer(),
                  Icon(Icons.chevron_right),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      )),
                  Spacer(),
                  Column(
                    children: <Widget>[
                      Text("Top Pick for You"),
                      Text(
                        "Avangers Endgame",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "April 16",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(width: 60,)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      )),
                  Spacer(),
                  Column(
                    children: <Widget>[
                      Text("Top Pick for You"),
                      Text(
                        "Avangers Endgame",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "April 16",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(width: 60,)
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(top: BorderSide(color: Colors.black),bottom: BorderSide(color: Colors.black))
              ),
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Icon(Icons.list),
                  Text("My List"),
                  Spacer(),
                  Icon(Icons.chevron_right),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text("App Settings", style: TextStyle(color: Colors.grey),),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text("Privacy", style: TextStyle(color: Colors.grey),),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text("Sign Out", style: TextStyle(color: Colors.grey),),
            ),
          ],
        ),
      ),
    );
  }
}

Widget makeProfileWidget() {
  return Container(
    color: Colors.black,
    padding: EdgeInsets.only(left: 5, right: 5),
    height: 100,
    width: 100,
    child: Column(
      children: <Widget>[
        Container(
          height: 70,
          child: ListView(
            padding: EdgeInsets.all(3),
            scrollDirection: Axis.horizontal,
            children: makeContainersProfile(),
          ),
        )
      ],
    ),
  );
}

int counterProfile = 0;
Color color;
List<Widget> makeContainersProfile() {
  List<Container> profileList = [];
  for (var i = 0; i < 5; i++) {
    counterProfile++;
    if (i % 2 == 0) {
      color = Colors.red;
    } else {
      color = Colors.blue;
    }

    if (i == 4) {
      profileList.add(
        Container(
          margin: EdgeInsets.only(right: 10),
          width: 70,
          height: 120,
          child: Column(
            children: <Widget>[
              Container(
                height: 45,
                child: Icon(Icons.add, color: Colors.grey, size: 30),
              ),
              Container(
                child: Container(
                    child: Text(
                  "Add Profile",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                )),
              )
            ],
          ),
        ),
      );
    } else {
      profileList.add(
        Container(
          margin: EdgeInsets.only(right: 10),
          padding: EdgeInsets.only(left: 5, right: 10),
          width: 70,
          color: color,
          /*child: Image(
        image: AssetImage("assets/" + counterProfile.toString() + ".jpg"),
        fit: BoxFit.fitHeight,
      ),*/
        ),
      );
    }
    if (counterProfile == 12) {
      counterProfile = 0;
    }
  }
  return profileList;
}
