import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: new Text('MaterialButton'),
                onPressed: () {
                  // ...
                },
              ),
              OutlineButton(
                onPressed: () {},
                child: Text('OutlineButton'),
              ),
              IconButton(
                color: Colors.blue,
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: new Text('RaisedButton'),
                onPressed: () {},
              ),
              SizedBox(width: 10.0),
              FlatButton(
                child: new Text('FlatButton'),
                onPressed: () {},
              ),
              SizedBox(width: 10.0),
              TextButton(onPressed: () {}, child: Text('TextButton'))
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: <Widget>[
              MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: new Text('ButtonBar'),
                onPressed: () {
                  // ...
                },
              ),
              CloseButton(),
              BackButton(),
            ],
          ),
          CupertinoButton(
            color: Colors.blue,
            child: Text('CupertinoButton'),
            onPressed: () {},
          ),
          Padding(padding: EdgeInsets.only(top: 16)),
          FloatingActionButton(
            onPressed: () {},
            child: new Icon(Icons.add),
            elevation: 8.0,
            highlightElevation: 2.0,
            backgroundColor: Colors.blue, // 红色
          ),
        ],
      ),
    );
  }
}
