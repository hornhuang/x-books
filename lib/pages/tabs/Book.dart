import 'package:flutter/material.dart';

class BookPage extends StatefulWidget {
  BookPage({Key key}) : super(key: key);

  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(padding: EdgeInsets.all(10), children: <Widget>[
      ListTile(
        leading: Container(
          width: 75,
          height: 125,
          child: Image.network(
            "https://www.itying.com/images/flutter/1.png",
            fit: BoxFit.cover,
          ),
        ),
        title: Text('华北黄淮高温雨今起强势登场'),
        subtitle: Text('中国天气网讯 21日开始，华北黄淮高温雨今起强势登场'),
      ),
      Divider(),
      ListTile(
        leading: Container(
          width: 75,
          height: 125,
          child: Image.network("https://www.itying.com/images/flutter/1.png",
              fit: BoxFit.cover),
        ),
        title: Text('华北黄淮高温雨今起强势登场'),
        subtitle: Text('中国天气网讯 21日开始，华北黄淮高温雨今起强势登场'),
      ),
      Divider(),
      ListTile(
        leading: Container(
          width: 75,
          height: 125,
          child: Image.network("https://www.itying.com/images/flutter/1.png",
              fit: BoxFit.cover),
        ),
        title: Text('华北黄淮高温雨今起强势登场'),
        subtitle: Text('中国天气网讯 21日开始，华北黄淮高温雨今起强势登场'),
      ),
    ]));
  }
}
