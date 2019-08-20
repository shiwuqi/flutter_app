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

  @override
  Widget build(BuildContext context) {
    return Material(
        child: CustomScrollView(
      slivers: <Widget>[
        SliverGrid.count(
          crossAxisCount: 4,
          childAspectRatio: 1,
          children: gridList.map<Widget>((item) {
            return new GridFlatButton(
                image: item['image'], title: item['title']);
          }).toList(),
        ),
        new SliverList(
          delegate:
              new SliverChildBuilderDelegate((BuildContext context, int index) {
            //创建列表项
            return Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Image(
                    image:
                        AssetImage("assets/images/home/common-scroll_food.jpg"),
                    width: 120.0,
                    height: 120.0),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(1.0, 0, 10.0, 0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 4.0),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "五颗星海鲜烤肉自助餐厅",
                                style: TextStyle(fontSize: 22.0),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 16.0),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "[八佰伴]海鲜自助晚餐",
                                style: TextStyle(
                                    fontSize: 18.0, color: Color(0xFF666666)),
                              )
                            ],
                          ),
                        ),
                        Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text("10元",
                                    style: TextStyle(
                                        fontSize: 22.0,
                                        color: Color(0xFFFF6600))),
                                Text("门市价：12元",
                                    style: TextStyle(fontSize: 18.0)),
                              ],
                            ),
                            Text("已售33705", style: TextStyle(fontSize: 18.0))
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            );
          }, childCount: 50),
        ),
      ],
    ));
  }
}
