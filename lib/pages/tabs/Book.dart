import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:xbooks/pages/tabs/BookTabs.dart';

class BookPage extends StatefulWidget {
  BookPage({Key key}) : super(key: key);

  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  var _tabs = [
    "人工智能",
    "经济学",
    "人工智能",
    "经济学"
  ];

  var _tabViews = [
    Text("人工智能"),
    Text("经济学"),
    Text("人工智能"),
    Text("经济学")
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 10, vsync: this);
    _tabController.addListener((){
      print(_tabController.index);
    });
  }

  @override
  void dispose() {
    super.dispose();
    if (_tabController != null) {
      _tabController.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TabBar(
          isScrollable: true,
          controller: this._tabController,
          indicatorSize: TabBarIndicatorSize.label,
          tabs: <Widget>[
            Tab(text:"人工智能"),
            Tab(text:"经济学"),
            Tab(text:"人工智能"),
            Tab(text:"经济学"),
            Tab(text:"人工智能"),
            Tab(text:"经济学"),
            Tab(text:"人工智能"),
            Tab(text:"经济学"),
            Tab(text:"人工智能"),
            Tab(text:"经济学")
          ],
        ),
      ),
      body: TabBarView(
        controller: this._tabController,
        children: <Widget>[
          Center(child: BookTabs("人工智能")),
          Center(child: BookTabs("经济学")),
          Center(child: BookTabs("人工智能")),
          Center(child: BookTabs("经济学")),
          Center(child: BookTabs("人工智能")),
          Center(child: BookTabs("经济学")),
          Center(child: BookTabs("人工智能")),
          Center(child: BookTabs("经济学")),
          Center(child: BookTabs("人工智能")),
          Center(child: BookTabs("经济学")),
        ]
      ),
    );
  }
}
