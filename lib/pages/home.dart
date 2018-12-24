import 'package:flutter/material.dart';
import 'package:netsurf_pro/pages/notification.dart';
import 'package:netsurf_pro/pages/settings.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var choice, wish, userName, userId, userImage, appId;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          elevation: 0.0,
          backgroundColor: Colors.blue,
          title: Text(
            'Netsurf',
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            new IconButton(
              icon: Icon(Icons.notifications),
              color: Colors.white,
              tooltip: 'Notification',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => NotificationScreen()));
              },
            ),
            new IconButton(
              icon: Icon(Icons.settings),
              color: Colors.white,
              tooltip: 'Settings',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => SettingsScreen(
                        this.choice,
                        this.wish,
                        this.userName,
                        this.userId,
                        this.appId,
                        this.userImage)));
              },
            ),
          ],
        ),
        body: new Column(
          children: <Widget>[
            new Stack(
              children: <Widget>[
                new Container(
                  height: 200.0,
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
                    new Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: Container(
                          alignment: Alignment.center,
                          child: new Column(
                            children: <Widget>[
                              new Text('400.0',
                                  style: new TextStyle(
                                      color: Colors.white,
                                      fontSize: 100.0,
                                      fontWeight: FontWeight.w200)),
                              new Text(
                                'Data Balance',
                                style: new TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ))
                  ],
                )
              ],
            ),
            new Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(top:20.0, left: 20.0, right: 20.0, bottom: 10.0),
                child: new Text(
                  'Transactions',
                  style: new TextStyle(fontWeight: FontWeight.w300, fontSize: 15.0),
                )),
            new Container(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              height: 200.0,
              width: double.infinity,
              child: new Card(
                elevation: 16.0, color: Colors.grey[300], clipBehavior: Clip.hardEdge,
              )
            )
          ],
        ));
  }
}
