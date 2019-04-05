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

final TextStyle topMenuStyle = TextStyle(fontSize: 12, color: Colors.white);

class HomeView extends StatelessWidget {
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
          makePopularWidget(),
        ],
      ),
    );
  }
}

Widget makePopularWidget() {
  return Container(
    height: 150,
    child: Column(
      children: <Widget>[
        Text("Popular on Netflix", style: topMenuStyle),
        Container(
          height: 100,
          child: ListView(
            padding: EdgeInsets.all(3),
            scrollDirection: Axis.horizontal,
            children: makeContainers(),
          ),
        )
      ],
    ),
  );
}

List<Widget> makeContainers(){
  List<Container> movieList = [];
  for (var i = 0; i < 10; i++) {
    Color color;
    if (i % 2 == 0) {
      color = Color(0xFFD11919);
    } else {
      color = Color(0xFF1CC413);
    }
    movieList.add(Container(
        color: color,
        height: 300,
        width: 120,
        margin: EdgeInsets.all(3),
    ));
  }
  return movieList;
}