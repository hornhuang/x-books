import 'package:flutter/material.dart';
import 'package:xbooks/pages/tabs/Book.dart';
import 'package:xbooks/pages/tabs/Find.dart';
import 'package:xbooks/pages/tabs/Home.dart';
import 'package:xbooks/utils/PreferencesHelper.dart';

class Tabs extends StatefulWidget {
  Tabs
({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

  var _concurrentindex = 0;
  var _pageLists = [
    BookPage(),
    FindPage(),
    HomePage()
  ];

  int themeIndex;

  var themeIcons = [
    Icons.wb_sunny,
    Icons.wb_cloudy
  ];

  @override
  void initState() { 
    super.initState();
    themeIndex = MyTheme.isDarkTheme()?1:0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(

        appBar: AppBar(
          title: Text("X-Books"),
          actions: <Widget>[
            IconButton(icon: Icon(themeIcons[themeIndex]), onPressed: () {
              MyTheme.updateThme(!MyTheme.isDarkTheme());
              setState(() {
                this.themeIndex = themeIndex = MyTheme.isDarkTheme()?1:0;
              });
            })
          ],
        ),
        body: _pageLists[this._concurrentindex],

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._concurrentindex,
          onTap: (int index){
            setState(() {
              this._concurrentindex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              title: Text("Book"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text("Find")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home")
            ),
          ]
        ),
      ),
    );
  }
}