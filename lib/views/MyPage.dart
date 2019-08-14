import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyPageState();
  }
}

class MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Icon(Icons.mood, size: 130.0, color: Colors.blue),
    );
  }
}