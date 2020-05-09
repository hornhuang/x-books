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

  @override
  void initState() {
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
            Tab(text:"花卉"),
            Tab(text:"经济学"),
            Tab(text:"水族"),
            Tab(text:"哲学"),
            Tab(text:"历史"),
            Tab(text:"美食"),
            Tab(text:"旅游"),
            Tab(text:"育儿"),
            Tab(text:"心理学")
          ],
        ),
      ),
      body: TabBarView(
        controller: this._tabController,
        children: <Widget>[
            // Center(child: Example08()),
            // Center(child: Example08()),
            // Center(child: Example08()),
            // Center(child: Example08()),
            // Center(child: Example08()),
            // Center(child: Example08()),
            // Center(child: Example08()),
            // Center(child: Example08()),
            // Center(child: Example08()),
            // Center(child: Example08()),
            Center(child: BookTabs("人工智能")),
            Center(child: BookTabs("花卉")),
            Center(child: BookTabs("经济学")),
            Center(child: BookTabs("水族")),
            Center(child: BookTabs("哲学")),
            Center(child: BookTabs("历史")),
            Center(child: BookTabs("美食")),
            Center(child: BookTabs("旅游")),
            Center(child: BookTabs("育儿")),
            Center(child: BookTabs("心理学"))
        ]
      ),
    );
  }
}
