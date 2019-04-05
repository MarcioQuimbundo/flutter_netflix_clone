import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black
      ),
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  final TextStyle topMenuStyle = TextStyle(fontSize: 12, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: ListView(
        children: <Widget>[
          Container(
            height: 430,
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text("Series", style: topMenuStyle),
                      Text("Films", style: topMenuStyle),
                      Text("MyList", style: topMenuStyle),
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
                            Icon(Icons.add,  color: Colors.white, size: 26,),
                            Text("My List")
                          ],
                        ),
                        onPressed: (){},
                      ),
                      FlatButton(
                        color: Colors.white,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.play_arrow),
                            Text("Play")
                          ],
                        ),
                        onPressed: (){},
                      ),
                      FlatButton(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.info, color: Colors.white, size: 26,),
                            Text("info")
                          ],
                        ),
                        onPressed: (){},
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}