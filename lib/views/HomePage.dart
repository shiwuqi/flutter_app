import 'package:flutter/material.dart';

class GridFlatButton extends StatefulWidget {
  GridFlatButton({Key key, this.image, this.title}) : super(key: key);
  final String image;
  final String title;

  @override
  _GridFlatButtonState createState() => new _GridFlatButtonState();
}

class _GridFlatButtonState extends State<GridFlatButton> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: new EdgeInsets.only(top: 10.0),
      child: Column(
        children: <Widget>[
          Image(image: AssetImage(widget.image), width: 80.0, height: 80.0),
          Text(
            widget.title,
            style: TextStyle(color: Colors.black, fontSize: 20.0, height: 1.6),
          )
        ],
      ),
      onPressed: () {},
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  List gridList;

  @override
  void initState() {
    super.initState();

    gridList = [
      {"image": "assets/images/home/buffet.png", "title": "火锅"},
      {"image": "assets/images/home/dessert.png", "title": "甜点饮品"},
      {"image": "assets/images/home/incense.png", "title": "自助餐"},
      {"image": "assets/images/home/fastfood.png", "title": "小吃快餐"},
      {"image": "assets/images/home/westernfood.png", "title": "西餐"},
      {"image": "assets/images/home/barbecue.png", "title": "烧烤烤肉"},
      {"image": "assets/images/home/hotpot.png", "title": "香锅烤鱼"},
      {"image": "assets/images/home/seafood.png", "title": "海鲜"}
    ];
  }

  Widget buildGrid() {
    List<Widget> gridViewList = [];
    for (var item in gridList) {
      gridViewList.add(new GridFlatButton(image: item['image'], title: item['title']));
    }
    return new GridView.count(
      crossAxisCount: 4,
      childAspectRatio: 1,
      children: gridViewList
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: buildGrid(),
    );
  }
}