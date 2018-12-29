import 'package:flutter/material.dart';


class EwalletSync extends StatefulWidget{
  @override
  _EwalletSyncScreenState createState() => new _EwalletSyncScreenState();
}
 enum Answer{YES,NO,MAYBE}
class _EwalletSyncScreenState extends State<EwalletSync>{

  String _answer = '';

  void setAnswer(String value){
    setState(() {
          _answer = value;
        });
  }

 

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: new Container(
        padding: new EdgeInsets.all(32.0) ,
        child: new Column(
          children: <Widget>[
           new SimpleDialog(
      title: new Text ('Fill in the form below'),
      children: <Widget>[
        new  Container(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 30.0),
                        child: new TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.fiber_pin),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            contentPadding: const EdgeInsets.only(
                                left: 10.0, right: 10.0),
                            labelText: 'Enter Secret Pin',
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.w200,
                                fontSize: 15.0),
                          ),
                        ),
                      
                    ),
                    new  Container(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 20.0),
                        child: new TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.fiber_pin),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            contentPadding: const EdgeInsets.only(
                                left: 10.0, right: 10.0),
                            labelText: 'Enter Secret Pin',
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.w200,
                                fontSize: 15.0),
                          ),
                        ),
                      
                    ),
      ],
    )  
          ],
        ),
      ),
      
    );
  }

}