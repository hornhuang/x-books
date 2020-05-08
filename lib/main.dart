import 'package:flutter/material.dart';
import 'package:xbooks/pages/Tab.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Tabs(),
    );
  }

}