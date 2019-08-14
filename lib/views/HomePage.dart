import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: Icon(Icons.home, size: 130.0, color: Colors.blue),
      ),
    );
  }
}