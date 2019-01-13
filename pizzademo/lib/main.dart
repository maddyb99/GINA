import 'package:flutter/material.dart';
import 'package:pizzademo/screens/home.dart';
import 'package:pizzademo/screens/Order.dart';
import 'package:pizzademo/screens/review.dart';
import 'package:pizzademo/screens/News.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'G.I.N.A.',
      routes: <String, WidgetBuilder> {
        '/Home': (BuildContext context) => new Home(),
        '/Order': (BuildContext context) => new Order(),
        '/Review': (BuildContext context) => new Review(),
        '/News': (BuildContext context) => new News(),
      },
      home: new Home(),
    );
  }
}