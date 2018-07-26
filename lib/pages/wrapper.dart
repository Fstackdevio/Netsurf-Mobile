import 'package:flutter/material.dart';
import 'package:lumous/utils/lumous.dart';
import 'package:lumous/utils/nav.dart';

class WrapperScreen extends StatefulWidget {
  @override
  _WrapperScreenState createState() => new _WrapperScreenState();
}

class _WrapperScreenState extends State<WrapperScreen> {

  @override
  void initState() {
    super.initState();
    setState(() {
          
        });
  }

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
          PopupMenuButton<Choice>(
            itemBuilder: (BuildContext context) {
              return choices.skip(2).map((Choice choice) {
                return PopupMenuItem<Choice>(
                  value: choice,
                  child: new ListTile(
                    title: choice.title,
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
  final Text title;
  final IconData icon;
  const Choice({this.title, this.icon});
}

const List<Choice> choices = const <Choice>[
  const Choice(title: Text(Lumous.settings), icon: Icons.settings),
  const Choice(title: Text(Lumous.quit), icon: Icons.exit_to_app),
];