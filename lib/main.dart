import 'package:flutter/material.dart';
import 'package:xbooks/pages/Tab.dart';
import 'package:xbooks/routes/Routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Tabs(),
      onGenerateRoute: onGenerateRoute,
    );
  }

}