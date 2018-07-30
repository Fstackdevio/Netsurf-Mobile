//import 'dart:io';

import 'package:flutter/material.dart';
import 'package:lumous/utils/lumous.dart';
//import 'package:lumous/utils/nav.dart';

class WrapperScreen extends StatefulWidget {
  @override
  _WrapperScreenState createState() => new _WrapperScreenState();
}

class _WrapperScreenState extends State<WrapperScreen> {

  @override
  void initState() {
    super.initState();
  }

 // Widget _select(Choice choice) {
 //   if(choice == choices[0]) {
 //         return _showModalSheet(),
 //   }
 //   else {
 //     return _showAlertDialog(),
 //   }
//  }

  void _showModalSheet(Choice choice) {
    showModalBottomSheet(
      context: context,
      builder: (builder) {
        return new Container(
          height: 250.0,
          color: Colors.white,
          padding: const EdgeInsets.all(32.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text('SETTINGS TRAY', 
                        style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        );

      });
  }

  Column buttonColumn(IconData icon, String label) {
    Color color = Theme.of(context).accentColor;

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        )
      ],
    );
  }

 // void _showAlertDialog() {
 //   new AlertDialog(
 //     content: new Text(Lumous.quit_title, style: new TextStyle(fontSize: 20.0),
//      ),
//      actions: <Widget>[
//        new FlatButton(
//          color: Colors.blueAccent,
//          child: new Text(Lumous.dialog_yes),
//          onPressed: () => exit(0),
//        ),
//        new FlatButton(
//          color: Colors.blueAccent,
//          child: new Text(Lumous.dialog_no),
//          onPressed: () {
 //           Navigator.pop(context);
//          },
 //       ),
//      ],
//    );
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Lumous.name),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.email),
            onPressed: () {},
          ),
          new PopupMenuButton<Choice>(
            onSelected: _showModalSheet,
            itemBuilder: (BuildContext context) {
              return choices.map((Choice choice) {
                return PopupMenuItem<Choice>(
                  value: choice,
                  child: new ListTile(
                    title: new Text(choice.title),
                    leading: new Icon(choice.icon),
                  ),
                );
              }).toList();
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () => {},
        child: Icon(Icons.flash_on, color: Colors.white),
      ),
    );
  }
}

class Choice {
  final String title;
  final IconData icon;
  const Choice({this.title, this.icon});
}

const List<Choice> choices = const <Choice>[
  const Choice(title: Lumous.settings, icon: Icons.settings),
  //const Choice(title: Lumous.quit, icon: Icons.exit_to_app),
];
