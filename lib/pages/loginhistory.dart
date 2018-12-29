import 'package:flutter/material.dart';
import 'package:netsurf_pro/models/history_card.dart';


class LoginHistory extends StatefulWidget{
  @override
  _LoginHistoryState createState() => new _LoginHistoryState();
}

class _LoginHistoryState extends State<LoginHistory>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new Stack(
              children: <Widget>[
                new Container(
                    height: 250.0,
                    width: double.infinity,
                    color: Colors.blue,
                  ),
                  new Column(
                    children: <Widget>[
                      new Padding(
                          padding: EdgeInsets.only(top: 170.0),
                          child: Container(
                            alignment: Alignment.center,
                            child: new Column(
                              children: <Widget>[
                                new Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(500.0)),
                                  ),
                                  child: Text('testing'),
                                ),
                                new Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    IconButton(
                                      icon: Icon(Icons.filter_list),
                                      color: Colors.white,
                                      onPressed: (){},
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.error),
                                      color: Colors.white,
                                      onPressed: (){},
                                    )
                                  ],
                                )
                              ],
                            ),
                          ))
                    ],
                  )
              ],
            ),
           // HistoryCard()
          ],
        ),
      ),
    );
  }
}