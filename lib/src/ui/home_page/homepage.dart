import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black, brightness: Brightness.dark),
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
    return Material(
      child: Container(
        child: ListView(
          children: <Widget>[
            Container(
              height: 310,
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
                        FlatButton(
                            onPressed: () {},
                            child: Text("Series", style: topMenuStyle)),
                        FlatButton(
                            onPressed: () {},
                            child: Text("Films", style: topMenuStyle)),
                        FlatButton(
                            onPressed: () {},
                            child: Text("MyList", style: topMenuStyle)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
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
                      children: <Widget>[
                        Icon(Icons.play_arrow, color: Colors.black),
                        Text("Play", style: TextStyle(color: Colors.black))
                      ],
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
            SizedBox(
              height: 10,
            ),
            makePopularWidget("Popular on Netflix"),
            makePopularWidget("Trending Now"),
            makeContinueWatching("Continue Watching for Kalle"),
            bannerMovie(),
            makePopularWidget("NETFLIX ORIGINALS >"),
            makePopularWidget("Watch It Again"),
            makePopularWidget("New Releases"),
            makePopularWidget("US Crime TV Programmes"),
            makePopularWidget("Comedies"),
            makePopularWidget("Romance Programmes"),
            makePopularWidget("Documentaries"),
            makePopularWidget("US TV Dramas"),
          ],
        ),
      ),
    );
  }
}

Widget makeContinueWatching(String title) {
  return Container(
    padding: EdgeInsets.only(left: 5, right: 5),
    height: 220,
    child: Column(
      children: <Widget>[
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[Text(title, style: topMenuStyle)],
          ),
        ),
        Container(
          height: 200,
          child: ListView(
            padding: EdgeInsets.all(3),
            scrollDirection: Axis.horizontal,
            children: makeContinueContainers(),
          ),
        )
      ],
    ),
  );
}

Widget makePopularWidget(String title) {
  return Container(
    padding: EdgeInsets.only(left: 5, right: 5),
    height: 220,
    child: Column(
      children: <Widget>[
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[Text(title, style: topMenuStyle)],
          ),
        ),
        Container(
          height: 200,
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

int counter = 0;
List<Widget> makeContainers() {
  List<Container> movieList = [];
  for (var i = 0; i < 6; i++) {
    counter++;
    movieList.add(Container(
      padding: EdgeInsets.only(left: 5, right: 10),
      width: 130,
      child: Image(
        image: AssetImage("assets/" + counter.toString() + ".jpg"),
        fit: BoxFit.fitHeight,
      ),
    ));
    if (counter == 12) {
      counter = 0;
    }
  }
  return movieList;
}

List<Widget> makeContinueContainers() {
  List<Container> movieList = [];
  for (var i = 0; i < 6; i++) {
    counter++;
    movieList.add(Container(
      padding: EdgeInsets.all(5),
      height: 200,
      width: 120,
      child: Column(
        children: <Widget>[
          Container(
            height: 140,
            width: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/" + counter.toString() + ".jpg"),
                fit: BoxFit.fitHeight,
              ),
            ),
            child: Center(
              child: FlatButton(
                child: Icon(Icons.play_circle_outline, size: 70),
                onPressed: () {},
              ),
            ),
          ),
          Container(
            width: 110,
            height: 30,
            margin: EdgeInsets.only(top: 3),
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(2)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                    padding: EdgeInsets.only(right: 25), child: Text("S1:E3")),
                Icon(
                  Icons.info,
                  size: 15,
                )
              ],
            ),
          )
        ],
      ),
    ));
    if (counter == 12) {
      counter = 0;
    }
  }
  return movieList;
}

Widget bannerMovie() {
  return Container(
    child: Column(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Avalable Now",
              style: topMenuStyle,
            )),
        Container(
          child: Image(
            image: AssetImage("assets/birdboxBanner.jpg"),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 5, bottom: 5),
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(
                child: Container(
                  margin: EdgeInsets.only(top: 8, bottom: 8),
                  width: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.play_arrow,
                        color: Colors.black,
                      ),
                      Text(
                        "Play",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                onPressed: () {},
                color: Colors.white,
              ),
              FlatButton(
                child: Container(
                  margin: EdgeInsets.only(top: 8, bottom: 8),
                  width: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      Text(
                        "My List",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                onPressed: () {},
                color: Color(0xFF664444),
              )
            ],
          ),
        )
      ],
    ),
  );
}
