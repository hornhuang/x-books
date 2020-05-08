import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:xbooks/utils/UrlHelper.dart';

class BookTabs extends StatefulWidget {
  String _category;

  BookTabs(this._category, {Key key}) : super(key: key);

  @override
  _BookTabsState createState() => _BookTabsState(this._category);
}

class _BookTabsState extends State<BookTabs> {
  String _category;

  var _booksList = [];

  _BookTabsState(this._category);

  @override
  void initState() {
    super.initState();
    _getBooks();
  }

  _getBooks() async {
    var apiUrl = GET_BOOKS_BY_NAME + this._category;
    Response response = await Dio().get(apiUrl);
    setState(() {
      this._booksList = response.data;
    });
  }

  Widget _getBook(context, index) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network(
                _booksList[index]["cover_url"] != null
                    ? this._booksList[index]["cover_url"]
                    : "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1588961564404&di=b30ff50e01cf8572e4e85059a7e8777a&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2F4efb1c90277789d79e668fdf08c9f336623651231873e-L7DOWH_fw658",
                fit: BoxFit.contain),
            SizedBox(height: 12),
            Text(
              _booksList[index]['title'],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
          border:
              Border.all(color: Color.fromRGBO(233, 233, 233, 0.9), width: 1)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          body: this._booksList.length > 0
              ? GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      crossAxisCount: 2),
                  itemCount: this._booksList.length,
                  itemBuilder: this._getBook,
                )
              : Center(
                  child: Image.network(
                      "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1588960394935&di=516d609eb475b579a79319f7c40e6b28&imgtype=0&src=http%3A%2F%2Fimg2.imgtn.bdimg.com%2Fit%2Fu%3D2022540562%2C3971311545%26fm%3D214%26gp%3D0.jpg"))),
    );
  }
}
