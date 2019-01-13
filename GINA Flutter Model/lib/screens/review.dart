import 'package:flutter/material.dart';
import 'package:pizzademo/code/Info.dart';

class Review extends StatelessWidget {
  Info _pizzaOrder;
  List<String> _list = new List<String>();

  Review({order: null, Info Send}) {
    _pizzaOrder = order;

    _list.add("Connection: ${_pizzaOrder.connection}");
    _list.add(" ");
    _list.add("Receivers");

    _pizzaOrder.toppings.forEach((String name, bool value){
      if(value) _list.add(name);
    });

  }

  @override
  Widget build(BuildContext context) {
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
              child: new Text(_pizzaOrder.News, style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
            ),

            new Expanded(
                child: new ListView.builder(
                  shrinkWrap: true,
                    itemCount: _list.length,
                    itemBuilder: (BuildContext context, int index){
                      return new Text(_list.elementAt(index));
                  }
                ) 
            ),
          ],
        ),
      ),
    );
  }
}