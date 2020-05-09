import 'package:flutter/material.dart';
import 'package:xbooks/pages/Tab.dart';
import 'package:xbooks/routes/Routes.dart';
import 'package:xbooks/utils/PreferencesHelper.dart';
import 'package:xbooks/provider/ThemeProvider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Tabs(),
      onGenerateRoute: onGenerateRoute,
      theme: false?getThemeStatus():null
    );
  }
}
