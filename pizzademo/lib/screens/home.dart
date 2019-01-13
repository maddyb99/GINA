import 'package:flutter/material.dart';
import 'package:pizzademo/screens/order.dart';
import 'dart:async';
import 'package:pizzademo/screens/News.dart';
class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    void _showDialog() {
      // flutter defined function
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: new Text("Sample News"),
            content: new Text("Complete News"),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              new FlatButton(
                child: new Text("Close"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
    return new Scaffold(
      appBar: new AppBar(title: new Text('G.I.N.A.'),),
      body: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Row(
            children: <Widget>[
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text('Sample News'),
                ),
                onTap: (){
                  //Navigator.of(context).pushNamed('/News');
                    //  popupMenuBuilder(context, new Text('Complete News'));
                  //PopupMenuItem()
                  _showDialog();
                },
              ),
              new RaisedButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  child: new Text('Broadcast'),
                  onPressed: (){Navigator.of(context).pushNamed('/Order');}
              )
            ],
          ),
        ),
     // )
    );
  }

}
Future<Null> popupMenuBuilder(BuildContext context, Widget child) async {
  return showDialog<Null>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => child);
}
