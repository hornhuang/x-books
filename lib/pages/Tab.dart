import 'package:flutter/material.dart';
import 'package:xbooks/pages/tabs/Book.dart';
import 'package:xbooks/pages/tabs/Find.dart';
import 'package:xbooks/pages/tabs/Home.dart';

class Tabs extends StatefulWidget {
  Tabs
({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

  var _concurrentindex = 0;
  var _pageLists = [
    FindPage(),
    BookPage(),
    HomePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(

        appBar: AppBar(
          title: Text("appbar")
        ),
        body: _pageLists[this._concurrentindex],

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._concurrentindex,
          onTap: (int index){
            setState(() {
              this._concurrentindex = index;
            });
          },
          fixedColor: Colors.red,
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