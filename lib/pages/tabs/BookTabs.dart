import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:xbooks/utils/UrlHelper.dart';
import 'dart:math';
import 'dart:typed_data';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

final Uint8List kTransparentImage = new Uint8List.fromList(<int>[
  0x89,
  0x50,
  0x4E,
  0x47,
  0x0D,
  0x0A,
  0x1A,
  0x0A,
  0x00,
  0x00,
  0x00,
  0x0D,
  0x49,
  0x48,
  0x44,
  0x52,
  0x00,
  0x00,
  0x00,
  0x01,
  0x00,
  0x00,
  0x00,
  0x01,
  0x08,
  0x06,
  0x00,
  0x00,
  0x00,
  0x1F,
  0x15,
  0xC4,
  0x89,
  0x00,
  0x00,
  0x00,
  0x0A,
  0x49,
  0x44,
  0x41,
  0x54,
  0x78,
  0x9C,
  0x63,
  0x00,
  0x01,
  0x00,
  0x00,
  0x05,
  0x00,
  0x01,
  0x0D,
  0x0A,
  0x2D,
  0xB4,
  0x00,
  0x00,
  0x00,
  0x00,
  0x49,
  0x45,
  0x4E,
  0x44,
  0xAE,
]);

class BookTabs extends StatefulWidget {
  String _category;

  BookTabs(this._category, {Key key}) : super(key: key);

  @override
  _BookTabsState createState() {
    return _BookTabsState(this._category);
  }
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: this._booksList.length != 0
          ? StaggeredGridView.countBuilder(
              primary: false,
              crossAxisCount: 4,
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
              itemBuilder: (context, index) => index < this._booksList.length
                  ? _Tile(this._booksList[index])
                  : null,
              staggeredTileBuilder: (index) => index < this._booksList.length
                  ? new StaggeredTile.fit(2)
                  : null,
            )
          : Center(
              child: Image.network(
                  "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1588971008466&di=3ca74a01da9dacc6a181c43018d3f152&imgtype=0&src=http%3A%2F%2Fimg2.imgtn.bdimg.com%2Fit%2Fu%3D2022540562%2C3971311545%26fm%3D214%26gp%3D0.jpg")),
    );
  }
}

class _Tile extends StatelessWidget {
  _Tile(this.book);

  var book;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          print(666);
          Navigator.pushNamed(context, '/bookdetail', arguments: {
            'url': book["url"]!=null?book["url"]:'https://book.douban.com/subject/30441/'
          });
        },
        child: Card(
          child: new Column(
            children: <Widget>[
              new Stack(
                children: <Widget>[
                  //new Center(child: new CircularProgressIndicator()),
                  new Center(
                    child: new FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      // https://picsum.photos/${size.width}/${size.height}/
                      image: book["cover_url"] != null
                          ? book["cover_url"]
                          : "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1588970321862&di=abd4a3f38e76e44336064bd4bec32bab&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2Fda0d08a1ab1918c0c0c34985731c3dbf9ccb31e15af07-8onYSf_fw658",
                    ),
                  ),
                ],
              ),
              new Padding(
                padding: const EdgeInsets.all(4.0),
                child: new Column(
                  children: <Widget>[
                    new Text(
                      book["title"],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    new Text(
                      book["abstract"],
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
