import 'package:flutter/material.dart';

void main() => runApp(Netflix());

class Netflix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: MaterialApp(
        title: "Netflix Clone",
        theme: ThemeData(
          primaryColor: Colors.black,
          accentColor: Colors.black,
          brightness: Brightness.dark,
        ),
        home: NetflixTabBar(),
      ),
    );
  }
}

class NetflixTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Theme(
        data: ThemeData(brightness: Brightness.dark),
        child: Scaffold(
          bottomNavigationBar: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(
                icon: Icon(Icons.search),
                text: "Search",
              ),
              Tab(
                icon: Icon(Icons.file_download),
                text: "Downloads",
              ),
              Tab(
                icon: Icon(Icons.list),
                text: "More",
              ),
            ],
            unselectedLabelColor: Color(0xFF999999),
            labelColor: Colors.white,
            indicatorColor: Colors.transparent,
          ),
          body: TabBarView(
            children: <Widget>[
              Center(child: Text("Page 1"),),
              Center(child: Text("Page 2"),),
              Center(child: Text("Page 3"),),
              Center(child: Text("Page 4"),),
            ],
          ),
        ),
      ),
    );
  }
}
