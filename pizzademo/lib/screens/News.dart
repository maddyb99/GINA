import 'package:flutter/material.dart';
import 'package:pizzademo/screens/review.dart';
import 'package:pizzademo/code/Info.dart';

class News extends StatelessWidget {


  @override
  Widget build(BuildContext context)  {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('G.I.N.A.'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Container(
              padding: const EdgeInsets.fromLTRB(0.0,5.0,0.0,15.0),
              child: new Text("Sample News", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
            ),
            new Container(
              padding: const EdgeInsets.fromLTRB(0.0,5.0,0.0,15.0),
              child: new Text('Complete News', style: new TextStyle(fontWeight: FontWeight.normal, fontSize: 15.0),),
            ),
          ],
        ),
      ),
    );
  }
}