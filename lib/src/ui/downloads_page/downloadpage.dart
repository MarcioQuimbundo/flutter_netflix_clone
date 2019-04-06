import 'package:flutter/material.dart';

class DownloadPage extends StatelessWidget {
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
      child: Column(
        children: <Widget>[
          Center(
            child: Icon(Icons.file_download),
          )
        ],
      ),
    );
  }
}
