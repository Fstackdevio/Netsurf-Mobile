import 'package:flutter/material.dart';
import 'package:netsurf_pro/tools/custom_shape.dart';

class ShareScreen extends StatefulWidget {
  @override
  _ShareScreenState createState() => new _ShareScreenState();
}

class _ShareScreenState extends State<ShareScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new SingleChildScrollView(
      child: new Stack(
        children: <Widget>[
          new Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  new ClipPath(
                    clipper: new CustomShape(),
                    child: new Container(
                      height: 300.0,
                      width: double.infinity,
                      color: Colors.blue,
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(
                            Icons.favorite,
                            size: 50.0,
                            color: Colors.white,
                          ),
                          new Text(
                            'Fill in the form below to share data',
                            style: new TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
