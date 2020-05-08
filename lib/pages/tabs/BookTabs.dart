import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:xbooks/utils/UrlHelper.dart';

class BookTabs extends StatefulWidget {

  String _category;

  BookTabs(this._category,{Key key}) : super(key: key);

  @override
  _BookTabsState createState() => _BookTabsState(this._category);
}

class _BookTabsState extends State<BookTabs> {

  String _category;

  var _booksList = [];

  _BookTabsState(this._category);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getBooks();
  }

  _getBooks() async {
    Response response = await Dio().get(GET_BOOKS_BY_NAME + this._category);
    setState((){
      this._booksList = json.decode(response.data);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         body: this._booksList.length > 0 ? ListView(
           children: this._booksList.map((value){
           return ListTile(
             title: Text(value["666"])
           );
         }).toList(),
       ):Text("loading...")),
    );
  }
}