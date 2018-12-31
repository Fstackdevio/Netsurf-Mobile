import 'package:flutter/material.dart';
import 'package:netsurf_pro/tools/nofystyle.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => new _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.lightBlueAccent),
        title: Text(
          'Notifications',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: NofyScreen(),
    );
  }
}
