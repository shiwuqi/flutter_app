import 'package:flutter/material.dart';
import './views/BottomBarNavigation.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'FlutterApp',
      home: new BottomBarNavigation(),
    );
  }
}
