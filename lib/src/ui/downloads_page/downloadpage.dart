import 'package:flutter/material.dart';

class DownloadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black, brightness: Brightness.dark),
      home: DownloadView(),
    );
  }
}

final TextStyle downloadLabelStyle =
    TextStyle(fontSize: 12, color: Colors.white);

class DownloadView extends StatelessWidget {
  final TextStyle bottomMenuStyle =
      TextStyle(fontSize: 12, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              width: 150,
              height: 150,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
              child: Icon(
                Icons.file_download,
                color: Colors.black,
                size: 100,
              )),
          SizedBox(
            height: 30,
          ),
          Container(
              width: 300,
              child: Text(
                "Movies and TV shows that you downloaded appear here.",
                textAlign: TextAlign.center,
              )),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: (){},
                      child: Container(
                width: 250,
                padding: EdgeInsets.symmetric(vertical: 6),
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.grey),
                ),
                child: Text(
                  "FIND SOMETHING TO DOWNLOAD",
                  textAlign: TextAlign.center,
                )),
          )
        ],
      ),
    ));
  }
}
