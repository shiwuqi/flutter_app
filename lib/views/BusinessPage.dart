import 'package:flutter/material.dart';

class BusinessPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new BusinessPageState();
  }
}

class BusinessPageState extends State<BusinessPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: Icon(Icons.business, size: 130.0, color: Colors.blue),
      ),
    );
  }
}