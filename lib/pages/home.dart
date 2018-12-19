import 'package:flutter/material.dart';
import 'package:netsurf_pro/pages/notification.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new Stack(
            children: <Widget>[
              new Container(
                height: 250.0,
                width: double.infinity,
                color: Colors.blue,
              ),
              new Positioned(
                bottom: 50.0,
                right: 100.0,
                child: new Container(
                  height: 400.0,
                  width: 400.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                    color: Colors.blueAccent.withOpacity(0.4),
                  ),
                ),
              ),
              new Positioned(
                bottom: 100.0,
                left: 150.0,
                child: new Container(
                  height: 300.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                    color: Colors.blueAccent.withOpacity(0.5),
                  ),
                ),
              ),
              new Column(
                children: <Widget>[
                  new SizedBox(height: 40.0),
                  new Row(
                    children: <Widget>[
                      new SizedBox(width: 15.0),
                      Container(
                        alignment: Alignment.topLeft,
                        child: new Text(
                          'Netsurf',
                          style: new TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      new SizedBox(width: 500),
                      new IconButton(
                        icon: Icon(Icons.notifications),
                        color: Colors.white,
                        tooltip: 'Notification',
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  NotificationScreen()));
                        },
                      ),
                      new IconButton(
                        icon: Icon(Icons.settings),
                        color: Colors.white,
                        tooltip: 'Settings',
                        onPressed: () {},
                      ),
                      new SizedBox(height: 10.0),
                    ],
                  ),
                  new Padding(
                      padding: EdgeInsets.all(40.0),
                      child: Container(
                        alignment: Alignment.center,
                        child: new Column(
                          children: <Widget>[
                            new Text('400',
                                style: new TextStyle(
                                    color: Colors.white,
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.bold)),
                            new Text(
                              'Data Balance',
                              style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ))
                ],
              )
            ],
          ),
          new SizedBox(height: 10.0),
          new Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(20.0),
              child: new Text(
                'Transactions',
                style: new TextStyle(fontWeight: FontWeight.bold),
              )),
          new Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(30.0),
            child: new Text('Transaction cards appear here'),
          )
        ],
      ),
    );
  }
}
