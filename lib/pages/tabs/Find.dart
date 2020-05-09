import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:xbooks/utils/PreferencesHelper.dart';

class FindPage extends StatefulWidget {
  FindPage({Key key}) : super(key: key);

  @override
  _FindPageState createState() => _FindPageState();
}

class _FindPageState extends State<FindPage> {
  List<Map> imgList = [
    {
      "url":
          'https://uploadbeta.com/api/pictures/random/?key=BingEverydayWallpaperPicture'
    },
    {"url": 'https://uploadbeta.com/api/pictures/random/'},
    {
      "url":
          'https://images.unsplash.com/photo-1587647454951-04a835b2a7ae?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max'
    },
    {
      "url":
          'https://images.unsplash.com/photo-1586336317854-af2b85c17bd4?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max'
    },
  ];

  List<String> history = [
    "1 我喜欢",
    "2 我喜欢",
    "3 我喜欢",
    "4 我喜欢",
    "5 我喜欢",
    "6 我喜欢",
    "7 我喜欢",
  ];

  var value = TextEditingController();

  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  void initState() {
    super.initState();
    _prefs.then((SharedPreferences prefs) {
      return (prefs.getString('his') ?? '[]');
    }).then((value) {
      setState(() {
        print("66666666666666666666666666666666666666");
        print(history);
        this.history = List<String>.from(json.decode(value));
        
        print("77777777777777777777777777777777777777");
        print(history.length);
      });
    });
  }

  List<Widget> render(BuildContext context, List children) {
    return ListTile.divideTiles(
        context: context,
        tiles: children.map((dynamic data) {
          return buildListTile(context, data[0], data[1], data[2]);
        })).toList();
  }

  Widget buildListTile(
      BuildContext context, String title, String subtitle, String url) {
    return new ListTile(
      onTap: () {
        Navigator.of(context).pushNamed(url);
      },
      isThreeLine: true,
      dense: false,
      leading: null,
      title: new Text(title),
      subtitle: new Text(subtitle),
      trailing: new Icon(
        Icons.arrow_right,
        color: Colors.blueAccent,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
            child: Column(children: <Widget>[
              Container(
                width: double.infinity,
                height: 50,
                child: Row(children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: TextField(
                      maxLines: 1,
                      controller: value,
                      decoration: InputDecoration(
                        icon: Icon(Icons.search),
                        hintText: "(●'◡'●)/ 我是接线员",
                      ),
                      onChanged: (value) {
                        setState(() {
                          this.value.text = value;
                        });
                      },
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: RaisedButton(
                        child: Text('搜索'),
                        color: Colors.blue,
                        textColor: Colors.white,
                        elevation: 20,
                        onPressed: () {
                          Navigator.pushNamed(context, '/booktabs',
                              arguments: {'url': this.value});
                        },
                      ))
                ]),
              ),
              Divider(),
              Container(
                  height: 150,
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Image.network(imgList[index]['url'],
                          fit: BoxFit.fitWidth);
                    },
                    itemCount: imgList.length,
                    pagination: new SwiperPagination(
                        margin: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 30.0),
                        builder: new DotSwiperPaginationBuilder(
                            color: Colors.white30,
                            activeColor: Colors.white,
                            size: 10.0,
                            activeSize: 10.0)),
                    loop: true,
                    autoplay: true,
                  )),
              Divider(),
              Container(
                  width: double.infinity,
                  child: Text(
                    "搜索历史",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: history.map((value) {
                    return MyButton(this, value);
                  }).toList())
            ])));
  }

  setValue(var value) {
    setState(() {
      this.value.text = value;
    });
  }
}

addFavorite(String value) {}

class MyButton extends StatelessWidget {
  final String text;

  final _FindPageState find;

  const MyButton(this.find, this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text(this.text),
        textColor: Colors.black,
        color: Color.fromRGBO(241, 243, 245, 1.0),
        elevation: 0.0,
        splashColor: Colors.grey,
        onPressed: () {
          this.find.setValue(text);
        });
  }
}
