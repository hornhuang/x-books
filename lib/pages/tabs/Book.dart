import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:xbooks/utils/UrlHelper.dart';

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

  _getBooks() async {
    Response response = await Dio().get(GET_BOOKS_BY_NAME + "编程");
    print(response.data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TabBar(
          isScrollable: true,
          controller: this._tabController,
          indicatorSize: TabBarIndicatorSize.tab,
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
          Center(child: Text("人工智能")),
          Center(child: Text("经济学")),
          Center(child: Text("人工智能")),
          Center(child: Text("经济学")),
          Center(child: Text("人工智能")),
          Center(child: Text("经济学")),
          Center(child: Text("人工智能")),
          Center(child: Text("经济学")),
          Center(child: Text("人工智能")),
          Center(child: Text("经济学"))
        ]
      ),
    );
  }
}
