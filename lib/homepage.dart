import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black),
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  final TextStyle topMenuStyle = TextStyle(fontSize: 12, color: Colors.white);
  final TextStyle bottomMenuStyle =
      TextStyle(fontSize: 12, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Container(
            height: 350,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/starwars1.jpg"),
                    fit: BoxFit.fill)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 50,
                        child: Image(
                          image: AssetImage("assets/netflix.png"),
                        ),
                      ),
                      FlatButton(onPressed: () {}, child: Text("Series", style: topMenuStyle)),
                      FlatButton(onPressed: () {}, child: Text("Films", style: topMenuStyle)),
                      FlatButton(onPressed: () {}, child: Text("MyList", style: topMenuStyle)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 26,
                      ),
                      Text(
                        "My List",
                        style: bottomMenuStyle,
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
                FlatButton(
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[Icon(Icons.play_arrow), Text("Play")],
                  ),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.info,
                        color: Colors.white,
                        size: 26,
                      ),
                      Text(
                        "info",
                        style: bottomMenuStyle,
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget makePopularWidget() {
  return Container(
    
  );
}