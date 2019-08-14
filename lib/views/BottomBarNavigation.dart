import 'package:flutter/material.dart';
import './HomePage.dart';
import './BusinessPage.dart';
import './MyPage.dart';

class BottomBarNavigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new BottomBarNavigationState();
  }
}

class BottomBarNavigationState extends State<BottomBarNavigation> {
  int _selectedIndex = 0;
  static List<StatefulWidget> _pageList;

  @override
  Widget build(BuildContext context) {

    _pageList = <StatefulWidget>[
      new HomePage(),
      new BusinessPage(),
      new MyPage()
    ];

    return new Scaffold(
      body: Center(
        child: _pageList.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: new Text(
                '首页',
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.business,
              ),
              title: new Text(
                '商业',
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.perm_identity,
              ),
              title: new Text(
                '我的',
              )),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlue[300],
        onTap: (int i) {
          setState(() {
            _selectedIndex = i;
          });
        },
      ),
    );
  }
}