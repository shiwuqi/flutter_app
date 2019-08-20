import 'package:flutter/material.dart';
import './views/BottomBarNavigation.dart';
import './views/DetailPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'FlutterApp',
      routes: {
        "detail_page": (context) => DetailPage(),
      },
      home: new BottomBarNavigation(),
    );
  }
}
